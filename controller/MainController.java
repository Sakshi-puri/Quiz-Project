package com.quize.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quize.model.Question;
import com.quize.model.Sign;
import com.quize.repository.QueRepo;
import com.quize.repository.RegRepo;




@Controller
public class MainController
{
	@Autowired
	RegRepo rg; //sign repo
	
	@Autowired
	QueRepo qr; //question repo
	
	@GetMapping("/")
	public String home()
	{
		return "index";  //index go signhot
		
	}
	@RequestMapping("/qu")
	public String sig() 
	{
		return"sign";
	}
	
	
	
	@GetMapping("/log")
	public String log()
	{
		return "login";
		
	}
	 @RequestMapping("/tp")
	 public String tp(@RequestParam("name") String name,
				@RequestParam("email") String email,
				@RequestParam("password") String password ,Model model) 
	 {
		 Sign sg=new Sign(email, password,name);
		 model.addAttribute("name", name);
			rg.save(sg);
			return "wel";
		 
	 }
	
	//****Admin****
	 @RequestMapping("/ad")
	 public String admin() 
	 {
		 
		 return"admin";
	 }
	 
	 @RequestMapping("/dilog")
	 public String directlog() 
	 {
		 return"adminLogin";
	 }
	 
	 @RequestMapping("/adlog")
		 
	 public String adlo(@RequestParam("name") String name,
				@RequestParam("email") String email,
				@RequestParam("password") String password ,Model model) 
	 {
		 Sign sg=new Sign(email, password,name);
		 model.addAttribute("name", name);
			rg.save(sg);
		 
		 return"adminLogin";
	 }
	 
	 @RequestMapping("/adfetch")
	 public String adminfetch(@RequestParam String email,@RequestParam String password)
	 {
		 Sign ob=rg.findByEmail(email);  //this method validation purpose in repository
			if(ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password)) 
			{
				return "success";
			}
			else {
				return "login";
			}
	 }
	 
	
	//naviagte to adding quize .jsp for add  aal abouve params
	@RequestMapping("/qui")
	public String save() 
	{
		
		return "quize";
	}
	
	
	
	
	
	
	@RequestMapping("/submitForm1")
	public String queSave(@RequestParam("questionTitle") String questionTitle,
							@RequestParam("option1") String option1,
							@RequestParam("option2")  String option2,
							@RequestParam("option3")  String option3,
							@RequestParam("option4")  String option4,
							@RequestParam("rightAnswer") String rightAnswer,
							@RequestParam("category") String category) 
	{
		
		Question que=new Question(questionTitle, option1, option2, option3, option4, rightAnswer, category);
		qr.save(que);
		return"result";
		
	}
	
	
	//	*********LOGIN MAPPING START HERE student*****
	
	@RequestMapping("/login")
	public String login(@RequestParam String email,@RequestParam String password) 
	{
		Sign ob=rg.findByEmail(email);  //this method validation purpose in repository
		if(ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password)) 
		{
			return "generate";    
		}
		else {
			return "login";
		}
	}
	
	
	
	
	//*******HERE WE CAN FETCH ALL QUESTIONS*******
	@RequestMapping("/fetch")
	public String datafetch(Model data) 
	{
		List<Question> al=qr.findAll();
		
		System.out.println(al);
		data.addAttribute("e_data",al);
		
		return "datafetch";
	}
	
	
	//**********FETCH CATEGORY WISE QUESTION********
	
	@RequestMapping("/category/{category}")
	public List<Question> getQueByCategory(@PathVariable String category ,Model model)
	{
		model.addAttribute("category", category);
		return qr.getQuestionByCategory(category);
	}
	
	 @RequestMapping("/categories")
	    public String getQueByCategoryQuery(@RequestParam String category, Model model) throws Exception {

	        List<Question> questionsByCategory = qr.getQuestionByCategory(category);

	        if (questionsByCategory == null || questionsByCategory.isEmpty()) {
	            throw new Exception("No questions found for category: " + category);
	        }

	      
	        model.addAttribute("questionsByCategory", questionsByCategory);

	        // Return the view name
	        return "showcat"; 
	    }
	 
	 @RequestMapping("/category")
	    public String showCategoryPage() {
	        return "category"; 
	    }
	
	
	//*********DELETION********
	@RequestMapping("/Delete/{id}")
	public String delete(@PathVariable int id) 
	{
		qr.deleteById(id);
		return "redirect:/fetch";  //success page go
	}
	
	
	
	
	
	
	
	//********HERE EDITING PROCESS START*******
	
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id,Model m)  //just extract particular id then 
	{													
													//using that id go to edit page 
													//and performing operation
												//show particular user data
	Question ob=	qr.findById(id).orElse(null);
	m.addAttribute("data",ob);
		return"edit";  //goes to edit page  
		
	}
	
	@RequestMapping("edit/{id}")
	public String update(@PathVariable int id, @ModelAttribute Question e) 
	{
		Question ob=	qr.findById(id).orElse(null);
		if(ob!=null) 
		{
			ob.setQuestionTitle(e.getQuestionTitle());
			ob.setOption1(e.getOption1());
			ob.setOption2(e.getOption2());
			ob.setOption3(e.getOption3());
			ob.setOption4(e.getOption4());
			ob.setRightAnswer(e.getRightAnswer());
			ob.setCategory(e.getCategory());
			qr.save(ob);
			
		}
		
		return "redirect:/fetch";  //success pagr go
	}
	
	
	
	
	
	
	
	
	
}
