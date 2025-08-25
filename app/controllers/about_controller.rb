class AboutController < ApplicationController
  def index
    # Ruby code - setting instance variables for the view
    @name = "Nader Abuawad"
    @current_year = Date.current.year
    @years_since_entry = @current_year - 2023
    
    # Ruby array of skills
    @skills = [
      { name: "JavaScript", level: "Intermediate", experience: "1 year", badge_class: "warning" },
      { name: "Python", level: "Advanced", experience: "5 years", badge_class: "success" },
      { name: "HTML/CSS", level: "Intermediate", experience: "1 year", badge_class: "warning" },
      { name: "React", level: "Intermediate", experience: "6 months", badge_class: "warning" },
      { name: "Git", level: "Intermediate", experience: "3 years", badge_class: "warning" },
      { name: "C#", level: "Advanced", experience: "1.5 years", badge_class: "success" },
      { name: "C", level: "Intermediate", experience: "6 months", badge_class: "warning" },
      { name: "C++", level: "Intermediate", experience: "6 months", badge_class: "warning" },
      { name: "SQL", level: "Advanced", experience: "1 year", badge_class: "success" },
      { name: "Spanish", level: "Native", experience: "-", badge_class: "primary" },
      { name: "English", level: "Expert", experience: "-", badge_class: "info" },
      { name: "Arabic", level: "Intermediate", experience: "-", badge_class: "warning" },
      { name: "Tennis", level: "Expert", experience: "12 years", badge_class: "info" },
      { name: "Powerlifting", level: "Expert", experience: "2 years", badge_class: "info" }
    ]
    
    # Ruby hash for personal info
    @personal_info = {
      major: "Civil Engineering Student in Computer Science",
      entry_year: 2023,
      github: "https://github.com/n-abuawadlahsen"
    }
    
    # Ruby method call to get formatted greeting
    @greeting = get_personalized_greeting
  end
  
  private
  
  # Ruby private method
  def get_personalized_greeting
    hour = Time.current.hour
    case hour
    when 0..11
      "Good morning! Welcome to my portfolio."
    when 12..17
      "Good afternoon! Thanks for visiting my page."
    else
      "Good evening! Hope you enjoy browsing my skills."
    end
  end
end
