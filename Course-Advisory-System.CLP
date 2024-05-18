;; Template: course
;; Description: Represents a course offered within an educational institution.
(deftemplate course
  (slot name)                   ; Description: The name of the course.
  (slot course-code)            ; Description: The code of the course.
  (multislot department)        ; Description: The department offering the course, such as 'CS', 'IT', and 'IS'.
  (slot parent)                 ; Description: The parent subject or department of the course.
  (slot semester (type INTEGER)); Description: The semester in which the course is offered.
  (multislot prerequisites)     ; Description: The prerequisites required for enrolling in the course.
  (slot CP (type INTEGER))      ; Description: The credit points associated with the course.
  (multislot outcomes)          ; Description: The learning outcomes or objectives of the course.
)

;; Facts: courses
;; Description: Represents the list of courses offered across different semesters in an educational institution.
(deffacts courses
  ;; Semester 1
  (course (name "Intro to Programming") (course-code "CS101") (department CS) (semester 1) (CP 3) (outcomes "Basic Programming Skills"))
  (course (name "Digital Logic") (course-code "CS102") (department CS) (semester 1) (CP 3) (outcomes "Understanding of Digital Circuits"))
  (course (name "Intro to Databases") (course-code "CS103") (department CS) (semester 1) (CP 3) (outcomes "Database Design Basics"))
  (course (name "Mathematics I") (course-code "MATH101") (department CS) (semester 1) (CP 4) (outcomes "Foundations of Calculus"))

  ;; Semester 2
  (course (name "Object-Oriented Programming") (course-code "CS201") (department CS) (semester 2) (CP 3) (outcomes "Advanced Programming Concepts"))
  (course (name "Computer Architecture") (course-code "CS202") (department CS) (semester 2) (CP 3) (outcomes "Understanding of Computer Architecture"))
  (course (name "Data Structures and Algorithms") (course-code "CS203") (department CS) (semester 2) (CP 3) (outcomes "Advanced Data Structures"))
  (course (name "Mathematics II") (course-code "MATH102") (department CS) (semester 2) (CP 4) (outcomes "Advanced Calculus"))

  ;; Semester 3
  (course (name "Operating Systems") (course-code "CS301") (department CS) (semester 3) (CP 3) (outcomes "Understanding of OS Concepts"))
  (course (name "Database Management Systems") (course-code "CS302") (department CS) (semester 3) (CP 3) (outcomes "Database Administration Skills"))
  (course (name "Computer Networks") (course-code "CS303") (department CS) (semester 3) (CP 3) (outcomes "Understanding of Network Protocols"))
  (course (name "Discrete Mathematics") (course-code "MATH201") (department CS) (semester 3) (CP 4) (outcomes "Mathematical Logic"))

  ;; Semester 4
  (course (name "Software Engineering") (course-code "CS401") (department CS) (semester 4) (CP 3) (outcomes "Software Development Lifecycle"))
  (course (name "Web Development") (course-code "CS402") (department CS) (semester 4) (CP 3) (outcomes "Frontend and Backend Development"))
  (course (name "Algorithms Analysis") (course-code "CS403") (department CS) (semester 4) (CP 3) (outcomes "Efficient Algorithms"))
  (course (name "Probability and Statistics") (course-code "MATH202") (department CS) (semester 4) (CP 4) (outcomes "Statistical Analysis"))

  ;; Semester 5
  (course (name "Artificial Intelligence") (course-code "CS501") (department CS) (semester 5) (CP 3) (outcomes "AI Techniques"))
  (course (name "Machine Learning") (course-code "CS502") (department CS) (semester 5) (CP 3) (outcomes "ML Algorithms"))
  (course (name "Software Testing") (course-code "CS503") (department CS) (semester 5) (CP 3) (outcomes "Testing Methodologies"))
  (course (name "Computer Graphics") (course-code "CS504") (department CS) (semester 5) (CP 3) (outcomes "Graphics Rendering Techniques"))

  ;; Semester 6
  (course (name "Cybersecurity") (course-code "CS601") (department CS) (semester 6) (CP 3) (outcomes "Security Principles"))
  (course (name "Cloud Computing") (course-code "CS602") (department CS) (semester 6) (CP 3) (outcomes "Cloud Technologies"))
  (course (name "Information Retrieval") (course-code "CS603") (department CS) (semester 6) (CP 3) (outcomes "Information Searching Techniques"))
  (course (name "Computer Vision") (course-code "CS604") (department CS) (semester 6) (CP 3) (outcomes "Image Recognition"))

  ;; Semester 7
  (course (name "Big Data Analytics") (course-code "CS701") (department CS) (semester 7) (CP 3) (outcomes "Analyzing Large Datasets"))
  (course (name "Natural Language Processing") (course-code "CS702") (department CS) (semester 7) (CP 3) (outcomes "Language Processing Techniques"))
  (course (name "Internet of Things") (course-code "CS703") (department CS) (semester 7) (CP 3) (outcomes "IoT Technologies"))
  (course (name "Parallel Computing") (course-code "CS704") (department CS) (semester 7) (CP 3) (outcomes "Parallel Processing Concepts"))

  ;; Semester 8
  (course (name "Capstone Project") (course-code "CS801") (department CS) (semester 8) (CP 6) (outcomes "Real-world Project Experience"))
  (course (name "Professional Ethics in Computing") (course-code "CS802") (department CS) (semester 8) (CP 2) (outcomes "Ethical Considerations"))
  (course (name "Seminar in CS") (course-code "CS803") (department CS) (semester 8) (CP 2) (outcomes "Research and Presentation Skills"))
  (course (name "Internship") (course-code "CS804") (department CS) (semester 8) (CP 6) (outcomes "Industry Experience"))
)

;; Template: job
;; Description: Represents a job position with associated requirements and details.
(deftemplate job
   (slot name)                      ; Description: The name of the job.
   (slot requirements)              ; Description: The requirements or qualifications for the job.
   (slot specialization)            ; Description: The specialization or field related to the job.
   (multislot required-courses)     ; Description: The courses required for the job.
   (slot salary)                    ; Description: The salary associated with the job.
)

;; Facts: jobs
;; Description: Facts representing various job positions with associated requirements and details.
(deffacts jobs
  ;; Software Developer
  (job (name "Software Developer")
       (requirements "Bachelor's degree in Computer Science or related field, strong programming skills")
       (specialization "Software Development")
       (required-courses "Intro to Programming" "Object-Oriented Programming" "Data Structures and Algorithms" "Software Engineering")
       (salary 60000))

  ;; Database Administrator
  (job (name "Database Administrator")
       (requirements "Bachelor's degree in Computer Science or related field, experience with database management systems")
       (specialization "Database Management")
       (required-courses "Intro to Databases" "Database Management Systems")
       (salary 65000))

  ;; Network Engineer
  (job (name "Network Engineer")
       (requirements "Bachelor's degree in Computer Science or related field, knowledge of computer networks")
       (specialization "Computer Networks")
       (required-courses "Computer Networks" "Operating Systems")
       (salary 70000))

  ;; Web Developer
  (job (name "Web Developer")
       (requirements "Bachelor's degree in Computer Science or related field, proficiency in web development technologies")
       (specialization "Web Development")
       (required-courses "Web Development" "Software Engineering")
       (salary 55000))

  ;; Data Scientist
  (job (name "Data Scientist")
       (requirements "Bachelor's degree in Computer Science or related field, experience with data analysis and machine learning")
       (specialization "Data Science")
       (required-courses "Machine Learning" "Probability and Statistics" "Artificial Intelligence" "Big Data Analytics")
       (salary 75000))

  ;; Cybersecurity Analyst
  (job (name "Cybersecurity Analyst")
       (requirements "Bachelor's degree in Computer Science or related field, knowledge of cybersecurity principles")
       (specialization "Cybersecurity")
       (required-courses "Cybersecurity" "Operating Systems" "Computer Networks")
       (salary 80000))

  ;; Systems Analyst
  (job (name "Systems Analyst")
       (requirements "Bachelor's degree in Computer Science or related field, analytical and problem-solving skills")
       (specialization "System Analysis")
       (required-courses "Software Engineering" "Database Management Systems" "Operating Systems")
       (salary 70000))

  ;; AI Research Scientist
  (job (name "AI Research Scientist")
       (requirements "Ph.D. in Computer Science or related field, expertise in artificial intelligence research")
       (specialization "Artificial Intelligence")
       (required-courses "Artificial Intelligence" "Machine Learning" "Probability and Statistics")
       (salary 100000))

  ;; Cloud Solutions Architect
  (job (name "Cloud Solutions Architect")
       (requirements "Bachelor's degree in Computer Science or related field, experience with cloud technologies")
       (specialization "Cloud Computing")
       (required-courses "Cloud Computing" "Operating Systems")
       (salary 90000))

  ;; IT Project Manager
  (job (name "IT Project Manager")
       (requirements "Bachelor's degree in Computer Science or related field, project management skills")
       (specialization "Project Management")
       (required-courses "Software Engineering" "Database Management Systems")
       (salary 85000))

  ;; UX/UI Designer
  (job (name "UX/UI Designer")
       (requirements "Bachelor's degree in Computer Science or related field, knowledge of user experience design principles")
       (specialization "UX/UI Design")
       (required-courses "Web Development" "Software Engineering")
       (salary 65000))

  ;; Machine Learning Engineer
  (job (name "Machine Learning Engineer")
       (requirements "Bachelor's degree in Computer Science or related field, expertise in machine learning algorithms")
       (specialization "Machine Learning")
       (required-courses "Machine Learning" "Probability and Statistics" "Artificial Intelligence")
       (salary 85000))
)

;; Rule: Welcome
;; Description: Welcomes the user to the Course Advisor System.
(defrule Welcome 
    (declare (salience 1))  ; Description: Sets the priority of this rule to 1.
    =>
    (printout t " ************************************************************** " crlf)
    (printout t " *           Welcome to the Course Advisor System!            * " crlf)
    (printout t " *     We're here to help you plan your academic journey.     * " crlf)
    (printout t " *------------------------------------------------------------* " crlf)
)

;; Rule: Jobs-Salaries
;; Description: Prints a header message for the Jobs & Salaries section.
(defrule Jobs-Salaries 
    (declare (salience 0))  ; Description: Sets the priority of this rule to 0.
    =>
    (printout t " *                      Jobs & Salaries                       * " crlf)
    (printout t " ************************************************************** " crlf)
    ; Description: Prints a header message to the console for the Jobs & Salaries section.
)

;; Rule: print-jobs
;; Description: Prints out the names and salaries of jobs.
(defrule print-jobs
    (declare (salience -1))  ; Description: Sets the priority of this rule to -1.
    (job (name ?name)
         (salary ?salary))
    =>
    (printout t " => Job: " ?name " | Salary: $" ?salary crlf)
    ; Description: Prints the name and salary of a job to the console with a cool format.
)

;; Rule: Jobs-interested
;; Description: Prints a header message for the Jobs Information section.
(defrule Jobs-interested
    (declare (salience -2))  ; Description: Sets the priority of this rule to -2.
    =>
    (printout t " ************************************************************** " crlf)
    (printout t " *                      Jobs Information                      * " crlf)
    (printout t " ************************************************************** " crlf)
    ; Description: Prints a header message to the console for the Jobs Information section.
)

;; Rule: Ask-User-About-Job
;; Description: Prompts the user to specify their desired job.
(defrule Ask-User-About-Job
    (declare (salience -3))  ; Description: Sets the priority of this rule to -3.
    =>
    (printout t " Q: Please, Enter the name of the job you're interested in: ")
    (bind ?job (readline))  ; Description: Reads user input for the desired job.
    (assert (desired-job ?job))  ; Description: Asserts the desired job as a fact.
)

;; Rule: Print-Job-Details
;; Description: Prints detailed information about the desired job.
(defrule Print-Job-Details
    (declare (salience -4))  ; Description: Sets the priority of this rule to -4.
    (desired-job ?job)
    (job (name ?job)
         (requirements ?requirements)
         (specialization ?specialization)
         (required-courses $?courses)
         (salary ?salary))
    =>
    (printout t " Job Name:       " ?job crlf)
    (printout t " Specialization: " ?specialization crlf)
    (printout t " Requirements:   " ?requirements crlf)
    (printout t " Salary:         $" ?salary crlf)
    (printout t " Courses to study:" crlf)
    (foreach ?course ?courses 
        (printout t "   - " ?course crlf))
)

;; Rule: Course-interested
;; Description: Prints a header message for the Course Information section.
(defrule Course-interested
    (declare (salience -5))  ; Description: Sets the priority of this rule to -5.
    =>
    (printout t " ************************************************************** " crlf)
    (printout t " *                     Course Information                     * " crlf)
    (printout t " ************************************************************** " crlf)
    ; Description: Prints a header message to the console for the Course Information section.
)

;; Rule: Ask-User-About-Course
;; Description: Prompts you to enter the name of the course you're interested in.
(defrule Ask-User-About-Course
    (declare (salience -6))  ; Description: Sets the priority of this rule to -6.
    =>
    (printout t " Q: What course are you interested in? Please enter its name: ")
    (bind ?courseName (readline))  ; Description: Reads user input for the desired course.
    (assert (desired-course ?courseName))  ; Description: Asserts the desired course as a fact.
)

;; Rule: Print-Course-Details
;; Description: Prints detailed information about the desired course.
(defrule Print-Course-Details
    (declare (salience -7))  ; Description: Sets the priority of this rule to -7.
    (desired-course ?courseName)
    (course (name ?courseName)
            (course-code ?code)
            (department $?departments)
            (parent ?parent)
            (semester ?semester)
            (prerequisites $?prerequisites)
            (CP ?cp)
            (outcomes $?outcomes))
    =>
    (printout t " Course Name:    " ?courseName crlf)
    (printout t " Course Code:    " ?code crlf)
    (printout t " Department:     " (implode$ ?departments) crlf)
    (printout t " Parent Subject: " ?parent crlf)
    (printout t " Semester:       " ?semester crlf)
    (printout t " Credit Points:  " ?cp crlf)
    (printout t " Prerequisites:  " (implode$ ?prerequisites) crlf)
    (printout t " Outcomes:       " (implode$ ?outcomes) crlf)
)

;; Rule: Course-between
;; Description: Prints a header message for the Courses section.
(defrule Course-between
    (declare (salience -8))  ; Description: Sets the priority of this rule to -8.
    =>
    (printout t " ************************************************************** " crlf)
    (printout t " *                           Courses                          * " crlf)
    (printout t " ************************************************************** " crlf)
    ; Description: Prints a header message to the console for the Courses section.
)

;; Rule: Ask-User-Current-Course
;; Description: Prompts the user to specify their current course.
(defrule Ask-User-Current-Course
    (declare (salience -9))  ; Description: Sets the priority of this rule to -9.
    =>
    (printout t " Q: What is the name of your current course? Please enter it here: ")
    (bind ?currentCourseName (readline))  ; Description: Reads user input for the current course.
    (assert (current-course ?currentCourseName))  ; Description: Asserts the current course as a fact.
)

;; Rule: Find-Courses-Between
;; Description: Finds courses between the user's current course and a desired course.
(defrule Find-Courses-Between
    (declare (salience -10))  ; Description: Sets the priority of this rule to -10.
    (current-course ?currentCourseName)
    (course (name ?currentCourseName)
            (semester ?currentSemester))
    (desired-course ?desiredCourseName)
    (course (name ?desiredCourseName)
            (semester ?desiredSemester))
    =>
    (if (> ?desiredSemester ?currentSemester)
        then
        (printout t " Courses between '" ?currentCourseName "' and '" ?desiredCourseName "' :" crlf)
        (do-for-all-facts ((?course course))
            (and (>= ?course:semester ?currentSemester)
                 (< ?course:semester ?desiredSemester))
            (printout t "   - " ?course:name " (" ?course:course-code ") | Semester: " ?course:semester crlf))
        else
        (printout t " You have already passed the course '" ?currentCourseName "'." crlf)
    )
)

(defrule good-luck
    (declare (salience -11))
    =>
    (printout t " ************************************************************** " crlf)
    (printout t " *           (: Best of luck with your studies! :)            * " crlf)
    (printout t " ************************************************************** " crlf)
)