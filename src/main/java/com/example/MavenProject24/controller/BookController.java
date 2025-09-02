package com.example.MavenProject24.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;                 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.MavenProject24.entity.Book;
import com.example.MavenProject24.repo.BookRepository;


@Controller
@RequestMapping("/library")
public class BookController {
	@Autowired
	private BookRepository bookRepository;

	@GetMapping("/addBookForm")
	public String displayAddBookForm(Model model) {
		model.addAttribute("book", new Book());
		return "addBook";
	}

	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("appName", "Yash Digital Library"); // Changed name here
		return "home";
	}

	@RequestMapping("/display")
	public String displayBookInfo(Model model,
								  @RequestParam(name = "searchTerm", required = false) String searchTerm,
								  @RequestParam(name = "statusFilter", required = false) String statusFilter) {
		List<Book> books;

	
			} else {
				// Search by term only
				books = bookRepository.findByNameContainingIgnoreCaseOrAuthorContainingIgnoreCase(searchTerm, searchTerm);
			}
		} else if (statusFilter != null && !statusFilter.isEmpty()) {
			// Filter by status only
			books = bookRepository.findByStatus(statusFilter);
		} else {
			// No search term or filter, display all books
			books = (List<Book>) bookRepository.findAll();
		}

		model.addAttribute("books", books);
		model.addAttribute("searchTerm", searchTerm); // Pass back for form persistence
		model.addAttribute("statusFilter", statusFilter); // Pass back for form persistence


		if(books.isEmpty()) {
			if (searchTerm != null && !searchTerm.trim().isEmpty()) {
				model.addAttribute("msg", "No books found matching your search term.");
			} else if (statusFilter != null && !statusFilter.isEmpty()) {
				model.addAttribute("msg", "No books found with the selected status.");
			} else {
				model.addAttribute("msg", "Unfortunately, the library is empty now. Let's"
					+ " contribute by adding some books");
			}
		} else {
			// Check if a message was added by a redirect
			if(model.getAttribute("msg") == null)
				model.addAttribute("msg", "Welcome to Yash Digital Library"); // Changed name here
		}
		return "displayBook";
	}

	@PostMapping("/addBook")
	public String addBook(@ModelAttribute("book") Book book, RedirectAttributes redirectAttributes) {
		book.setStatus("available");
		bookRepository.save(book);
		redirectAttributes.addFlashAttribute("msg", "Book added successfully. Thanks");
		return "redirect:/library/display"; // Redirect after POST
	}

	@GetMapping("/updateBookForm/{id}")
	public String displayUpdateBookForm(@PathVariable int id, Model model, RedirectAttributes redirectAttributes) {
		Optional<Book> bookOptional = bookRepository.findById(id);
		if (bookOptional.isPresent()) {
			model.addAttribute("book", bookOptional.get());
			return "updateBook";
		}
		redirectAttributes.addFlashAttribute("msg", "Book not found!");
		return "redirect:/library/display"; // Redirect if book not found
	}

	@PostMapping("/updateBook")
	public String updateBook(@ModelAttribute("book") Book book, RedirectAttributes redirectAttributes) {
		Optional<Book> existingBookOptional = bookRepository.findById(book.getId());
		if(existingBookOptional.isPresent()) {
			Book existingBook = existingBookOptional.get();
			book.setStatus(existingBook.getStatus());
			book.setBorrowedForDays(existingBook.getBorrowedForDays());
			book.setBorrowedDate(existingBook.getBorrowedDate());
		}
		bookRepository.save(book);
		redirectAttributes.addFlashAttribute("msg", "Book updated successfully!");
		return "redirect:/library/display"; // Redirect after POST
	}

	@GetMapping("/deleteBook/{id}")
	public String deleteBook(@PathVariable int id, RedirectAttributes redirectAttributes) {
		bookRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("msg", "Book deleted successfully!");
		return "redirect:/library/display"; // Redirect after GET (for delete)
	}

	@GetMapping("/borrowForm/{id}")
	public String displayBorrowForm(@PathVariable int id, Model model, RedirectAttributes redirectAttributes) {
		Optional<Book> bookOptional = bookRepository.findById(id);
		if (bookOptional.isPresent()) {
			model.addAttribute("book", bookOptional.get());
			return "borrowBook";
		}
		redirectAttributes.addFlashAttribute("msg", "Book not found!");
		return "redirect:/library/display"; // Redirect if book not found
	}

	@PostMapping("/borrowBook")
	public String borrowBook(@RequestParam("id") int id,
							 @RequestParam("borrowedForDays") int borrowedForDays,
							 RedirectAttributes redirectAttributes) {
		Optional<Book> bookOptional = bookRepository.findById(id);
		
			if (book.getStatus().equals("available")) {
				book.setStatus("borrowed");
				book.setBorrowedDate(new Date());
				book.setBorrowedForDays(borrowedForDays);
				bookRepository.save(book);
				redirectAttributes.addFlashAttribute("msg", "Book borrowed successfully!");
			} else {
				redirectAttributes.addFlashAttribute("msg", "Book is already borrowed!");
			}
		} else {
			redirectAttributes.addFlashAttribute("msg", "Book not found!");
		}
		return "redirect:/library/display"; // Redirect after POST
	}

	@GetMapping("/returnBook/{id}")
	public String returnBook(@PathVariable int id, RedirectAttributes redirectAttributes) {
		Optional<Book> bookOptional = bookRepository.findById(id);
		if (bookOptional.isPresent()) {
			Book book = bookOptional.get();
			if (book.getStatus().equals("borrowed")) {
				book.setStatus("available");
				book.setBorrowedDate(null);
				book.setBorrowedForDays(0);
				bookRepository.save(book);
				redirectAttributes.addFlashAttribute("msg", "Book returned successfully!");
			} else {
				redirectAttributes.addFlashAttribute("msg", "Book is already available!");
			}
		} else {
			redirectAttributes.addFlashAttribute("msg", "Book not found!");
		}
		return "redirect:/library/display"; // Redirect after GET (for return)
	}

	// Mappings for About and Contact pages
	@GetMapping("/about")
	public String aboutPage() {
		return "about";
	}

	@GetMapping("/contact")
	public String contactPage() {
		return "contact";
	}
}
