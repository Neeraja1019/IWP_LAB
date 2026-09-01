Experiment 4 — Dynamic DOM Manipulation
Aim

To demonstrate dynamic manipulation of HTML elements using JavaScript DOM methods.

Technologies Used
HTML5
CSS3
JavaScript
Document Object Model (DOM)
Description

This experiment demonstrates how JavaScript can dynamically create, remove, and modify HTML elements using the Document Object Model (DOM).

The webpage provides three interactive operations:

Add Element
Remove Element
Modify Element

When the user clicks a button, JavaScript accesses and modifies the webpage structure dynamically without reloading the page.

Features
Professional and responsive interface
Dynamic DOM workspace
Add HTML elements dynamically
Remove elements dynamically
Modify existing elements
Dynamic element counter
Interactive buttons
Hover effects
Smooth animations
Modern dark dashboard design
Mobile-friendly layout
DOM Operations Used
Create Element

The createElement() method is used to create a new HTML element dynamically.

document.createElement("div");

Add Element

The appendChild() method adds the newly created element to the webpage.

document.getElementById("container").appendChild(newPara);

Remove Element

The remove() method removes an existing element from the DOM.

elements[elements.length - 1].remove();

Modify Element

The textContent property is used to change the content of an existing element.

para.textContent = "This paragraph has been modified dynamically!";

Modify CSS

The classList.add() method is used to dynamically apply a CSS class.

parent.classList.add("modified");

File Structure
exp4/
│
├── dom.html
└── README.md

How to Run
Open the experiment folder in Visual Studio Code.
Open dom.html.
Right-click the file.
Select Open with Live Server.
The webpage will open in the browser.

The file can also be opened directly in a modern web browser.

How It Works
Add Element

Clicking Add Element creates a new element using JavaScript and adds it to the DOM workspace.

Remove Element

Clicking Remove Element removes the most recently added element.

The original element is protected from removal.

Modify Element

Clicking Modify Element changes the text of the first paragraph and applies a different visual style.

Element Counter

The counter automatically displays the current number of elements present in the workspace.

Expected Output

A professional Dynamic DOM Studio webpage is displayed with three buttons:

Add Element
Remove Element
Modify Element

The DOM workspace changes dynamically whenever the buttons are clicked.

Learning Outcome

This experiment helps in understanding:

Document Object Model
JavaScript DOM manipulation
createElement()
appendChild()
remove()
textContent
classList
Event handling
Dynamic webpage modification
JavaScript and HTML interaction
Conclusion

The experiment successfully demonstrates dynamic manipulation of HTML elements using JavaScript DOM methods. It shows how webpages can be modified interactively without refreshing the browser.