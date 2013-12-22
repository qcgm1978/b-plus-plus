# b-plus-plus 
[![Build Status](https://secure.travis-ci.org/aponxi/b-plus-plus.png?branch=master)](http://travis-ci.org/aponxi/b-plus-plus)

> b++ project

## Jump to Section

* [overview](#overview)

## overview
[[Back To Top]](#jump-to-section)
      

	*   language announcement: write.regularly , do freely
        *.  development mythology : http://c2.com/cgi/wiki?LanguageSmell
        *.  4 elements: In 1994, dp, refactor, dp—>pattern, test: Design Patterns changed the landscape of object-oriented development by introducing classic solutions to recurring design problems. In 1999, Refactoring revolutionized design by introducing an effective process for improving code. With the highly anticipated Refactoring to Patterns, Joshua Kerievsky has changed our approach to design by forever uniting patterns with the evolutionary process of refactoring.

        *.  empty and name
               : naming convention is a set of rules for choosing the character sequence to be used for identifiers which denote variables, types, functions, and other entities in source code and documentation.the following derives from http://www.planetgeek.ch/wp-content/uploads/2013/06/Clean-Code-V2.2.pdf
                     Choose Descriptive / Unambiguous Names +
Names have to reflect what a variable, field, property stands for. Names have to be precise.
Choose Names at Appropriate Level of Abstraction +
Choose names that reflect the level of abstraction of the class or method you are working in.
Name Interfaces After Functionality They Abstract +
The name of an interface should be derived from its usage by the client, such as IStream.
Name Classes After How They Implement Their Interfaces + The name of a class should reflect how it fulfils the functionality provided by
its interface(s), such as MemoryStream : IStream
Name Methods After What They Do +
The name of a method should describe what is done, not how it is done.
Use Long Names for Long Scopes +
fieldsparameterslocalsloop variables long short
Names Describe Side Effects +
Names have to reflect the entire functionality.
Standard Nomenclature Where Possible +
Don’t invent your own language when there is a standard.
Encodings in Names –
No prefixes, no type/scope information
        * philosophy and design pattern
            易 (yì) used as an adjective, means "easy" or "simple", whilst as a verb it indicates "change" or "the exchange or substitution of one thing for another". relevant to behavior class patterns
	          * asynchronous and concurrent : time-based class?
            George Berkeley: ‘To be is to be perceived’  . relevant to structural patterns and ui patterns
                  * change as presentation: ui CSS 3 will and presentation 
	          * laying all over the language 
	              	* macro :* 3d
            	            * webgl
		              	* utility : google web designer
	                *micro : code interface - core, test(runtime testing), ui, comments, doc etc like jsbin's interface. so I can fork jsbin and convert it into the editor of b++
	
           "The usefulness of a pot comes from its emptiness."-laozi . relevant to creating patterns
        * design principle , why make it not config:select good default values,pick strategy not satisfy everyone,user think less #design

	* tool The workbench becomes the center of the wood shop, the craftsman returning to it time and time again as a piece takes shape.For a programmer manipulating files of text, that workbench is the command shell.(the pragmatic programmer, shell games section)

        * the first and only principle : dry.  apply it quite broadly to include "database schemas, test plans, the build system, even documentation."(pragmatic programmer)
		* ipad
		* language 

			* fc

				* formal markdown idea plain text: And we believe that the best format for storing knowledge persistently is plain text. With plain text, we give ourselves the ability to manipulate knowledge, both manually and programmatically, using virtually every tool at our disposal.(pragmatic programmer, the power of plain text)
				* contents

			* ide

		* visuality 
		

		* distribution not integration
		* strict entry and tolerant exit
		* integral theory
		* positioning focus to the exact position
		* eight main problem
		* 
			* paradigm
				* hacker(wiki): A person who enjoys exploring the details of programmable systems and stretching their capabilities, as opposed to most users, who prefer to learn only the minimum necessary.

			* language The limits of language are the limits of one's world. Ludwig Von Wittgenstein
				* Language Implementation Patterns

					* There are four common kinds of scoping rules: languages with a single scope, nested scopes, C-style struct scopes, and class scopes

				* minimalism(Minimalism (visual arts))
					*  set out to expose the essence, essentials or identity of a subject through eliminating all non-essential forms, features or concepts. 

				* loop
					* At the level of machine or assembly language, control flow instructions usually work by altering the program counter. For some CPUs the only control flow instructions available are conditional or unconditional branch instructions (also called jumps).


			* architecture
			* test
			* debug
			* clean
			* build
			* 
			* 
				* chaos








--------
<small>_This readme has been automatically generated by [readme generator](https://github.com/aponxi/grunt-readme-generator) on Fri Dec 06 2013 12:01:37 GMT+0800 (China Standard Time)._</small>
