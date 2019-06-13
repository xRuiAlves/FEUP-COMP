*********************************************************************
** PROJECT TITLE: Compiler of the Java--language to Java Bytecodes **
*********************************************************************

GROUP: 41

NAME1: Filipa Manita Santos Durão
NR1: 201606640
GRADE1: 18.8
CONTRIBUTION1: 33.3% - All members of the group equally contributed to the project's development

NAME2: Miguel Pereira Duarte
NR2: 201606298
GRADE2: 18.8
CONTRIBUTION2: 33.3 % - All members of the group equally contributed to the project's development

NAME3: Rui Pedro Moutinho Moreira Alves
NR3: 201606746
GRADE3: 18.8
CONTRIBUTION3: 33.3 % - All members of the group equally contributed to the project's development

GLOBAL Grade of the project: 18.8


*************
** SUMMARY **
*************

The developed tool consists of a Java-- language compiler. The tool allows the visualization of the results of the various compilation steps - Lexical Analysis, Syntactic Analysis, Semantic Analysis, and Code Generation. The tool also allows compiling with different optimization options (which will be described below).


*************
** EXECUTE **
*************

In order to run the tool, the following syntax is used:
java -jar jmm.jar [-r=<num>] [-o] <input_file.jmm>

Where:
    -> The -r optimization refers to the register allocation optimization, attempting to optimize the register allocation to only use up to <num> registers.
    -> The -o optimization refers to other optimizations, namely constant propagation, loop template and strength reduction optimizations.
    
The creation of the "compiled" and "jasmin_out" directory may be needed depending on the software version.

Alternatively to the previously presented way of running the tool, the "run.sh" script may be used, which automatically creates the above-mentioned directories.


***********************************
** DEALING WITH SYNTACTIC ERRORS **
***********************************

The developed tool has a degree of tolerance to some syntactic errors, not exiting right after the first error if such error is on a WHILE condition. Errors on WHILE conditions are recovered by jumping over the loop's condition statement, ignoring it. This tool deals with up to 10 syntactic errors on WHILE conditions. After the maximum number of errors is reached, an ErrorLimitReached exception is thrown, aborting execution.

Any other kind of syntactic error aborts the compilation process at the first occurrence.


***********************
** SEMANTIC ANALYSIS **
***********************

The semantic analysis process is done by visiting the nodes in the AST that was generated after the syntactic analysis. In order for each node to make its own necessary semantic verifications, it needs only to implement its own version of the applySemanticAnalysis() method, which may perform any needed verifications (according to the node type), throwing a SemanticError exception if any semantic error is detected, halting the analysis process. 

Thus, this algorithm allows great scalability in addition of new node types, since in order to perform semantic analysis for a given node it only needs to implement the previously described method.

After the syntactic analysis is complete, the developed compiler performs a semantic analysis of the source file, being the following rules taken into account:
    -> Expression analysis:
        -> Variables must be declared before being initialized;
        -> Variables must be initialized before being used;
        -> Variables used in arithmetic expressions (+, -, * and /) must be of integer type (integer literals, integer array access, integer returning methods calling or array "length" field accessing);
        -> The array access index must be of integer type;
        -> Variables used in comparison expressions (less than) must be of integer type
        -> Variables used in logical expressions (&&, !) must be of boolean type  
    -> Statement analysis
        -> The expressions in If statements must be of boolean type;
        -> The expressions in While statements must be of boolean type;
    -> Return mismatch analysis: the type of value given to return must match the return type of the method;
    -> Context analysis: 'this' cannot be used in static context;
    -> Method redeclaration verification: Cannot declare methods with the same signature (e.g. two methods that receive two integer type variables);
    -> Method return type verification in variable assignment statements:
    -> "length" attribute may only be used in integer array type variables;
    -> Method calls may only be applied to class instances (non-primitive types); Usage on undeclared variables is assumed as a static method invocation
 

****************************************
** INTERMEDIATE REPRESENTATIONS (IRs) **
****************************************

In order to generate an Intermediate Representation (high level), an implementation based on JavaCC automatically generated classes for the developed syntactic productions (by using the "multi=true" JavaCC option) was used. 

Subsequently, the generated CST (Concrete Syntax Tree) is traversed and updated (with the semantic analysis and code generation processes in view) in the following ways:
    -> Certain nodes that are not relevant for a high-level view of the code structure are ignored, thus being removed from the tree;
    -> Certain nodes are moved inside the tree (in order to improve the tree's "semantic structure");
    -> Extra data is added to the tree's nodes, based on their parent/children.
    
This process allows the generation of a High-Level Intermediate representation (with a tree structure) that highly enhances both the semantic analysis, optimizations, and code generation processes. 


*********************
** CODE GENERATION **
*********************

The code generation process is done by visiting the nodes in the AST that was generated after the syntactic analysis. In order for each node to generate their own code, they may implement the following methods:
    -> generateCodeNodeOpen() - this method allows the generation of code at the beginning of the node analysis (before child nodes are explored);
    -> generateCodeNodeClose() - this method allows the generation of code at the end of the node analysis (after child nodes are explored);
    -> generateCodeChildNodeClose() - this method allows the generation of code after each of the node's child is analyzed (used for the logical And operations).

This algorithm allows great scalability in the addition of new node types since in order to generate code for a given node it is only necessary to implement the above-described function.

In the code generation process, various instruction selection optimizations were implemented:
    -> When generating code for integer literals, the integer size is being taken into account:
        -> iconst_N is being used for N values in the range [0, 5] (both limits included)
        -> bipush is being used for values in the range [6, 127] (6 to 2^7 - 1);
        -> sipush is being used for values in the range [128, 32767] (2^7 to 2^15 - 1);
        -> ldc is being used for the remaining values (greater than or equal to 2^15);
    -> When incrementing / decrementing a variable with a constant, the iinc instruction is being used
    -> The iload_N, istore_N, aload_N and astore_N instructions version is being used for N values in the range [0, 3] (both limits included)

The developed code generation covers all the Java-- language capabilities.

The developed compiler was able to successfully generate code to all of the test cases that were provided via Moodle, as well as for the extensive developed test suite (with is available in the "test" directory in the project's root directory).


**************
** OVERVIEW **
**************

The approach used by the developed tool to perform the compilation process follows a very modular structure, being all the distinct steps (lexical analysis, syntactic analysis, semantic analysis, code generation) executed in different stages:
    -> The lexical and syntactic analysis is performed by applying the various grammar restrictions using JavaCC;
    -> The semantic analysis is performed (using the algorithm previously described in the "Semantic Analysis" section);
    -> The optimizations are applied (such as constant propagation, loop template optimizations, and strength reduction);
    -> The stack limit is calculated - This calculation is done by visiting the nodes in the AST (similarly to the semantic analysis process). Each node calculates its impact on its scope stack size, making use of the MethodStackSize and MethodStackSizeScope classes. This process allows the calculation of the optimal stack size.
    -> The code generation process is performed (using the algorithm previously described in the "Code Generation" section).
    

*****************************
** DEVELOPED OPTIMIZATIONS **
*****************************

In order to enhance the generated code, certain optimizations were implemented:

-> Constant propagation
When a constant is assigned to a variable, the constants are propagated through the following code (without the need of using an extra register for the given constant)

-> Loop template optimizations
In order to avoid unnecessary unconditional jumps, an improved template is being used while loops with simple conditional statements. However, this optimized template has the downside of needing to repeat the condition verification. For that reason, the optimization should only be applied when the conditional statement is simple (a conditional statement is simple if it does not include the occurrence of && logical operations and if it has a small number of "propagated children", that is, less than 4 for the first 2 children levels). The templates are the following:

-> The un-optimized while loop template:
       begin: <condition>
              ifeq end
              <body>
              jmp begin
       end:   ...
-> The optimized while loop template:
       begin:  <condition>
               ifeq end
               <body>
               <condition>
               ifne begin
       end:    ...

-> Strength reduction
Strength reduction consists in replacing "expensive" operations with equivelent "less expensive" operations. For example, converting "2*a" in "a+a" and simple multiplications by base 2 exponents into logical shifts (e.g. converting "a*256" into "a << 8").

In order to visualize the impact of applying the above-described optimizations, the compiler presents information regarding how many optimizations were made and the number of times the optimizations had a positive effect.


***********************
** TASK DISTRIBUTION **
***********************

All group members equally participated in all the project's tasks, in both the conceptualization and implementation steps.


**********
** PROS **
**********

The developed compiler is a very lightweight tool. It allows to quickly compile Java-- language source files, optionally allowing the specification of various optimizations. It also provides the presentation of the "internal" representation of the code throughout the various compilation steps, as well as the presentation of the positive impact of the various chosen optimizations (if any optimizations are being used).


**********
** CONS **
**********

The compiler's action range is very limited, only being able to compile a small subset of the Java language (Java-- language).


***********************
** Software Versions **
***********************

-> JJTree 5.0
-> JavaCC 5.0
-> JavaC 10.0.2 (openjdk 11)
