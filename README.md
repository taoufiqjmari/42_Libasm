# Libasm

<p>Summary:  The aim of this project is to get familiar with assembly language.</p>

<label for="general">Assembly</label>
<ol id="general">
    <li>
        <a href="https://www.tutorialspoint.com/assembly_programming/index.htm">tutorialspoint.com</a>
    </li>
    <li>
        <a href="https://riptutorial.com/x86">RIP Tutorial</a>
    </li>
</ol>

<label for="first">You must compile your assembly code with nasm.<br />You must write 64 bits ASM.</label>
<ol id="first">
    <li>man nasm</li>
    <li>/-f</li>
    <li>nasm -hf | grep "macho64"</li>
</ol>

<label for="second">You can’t do inline ASM</label>
<ul id="second">
    <li>
        <p>Inline assembly (typically introduced by the asm keyword) gives the ability to embed assembly language source code within a C program.</p>
    </li>
    <li>
        <p>In computer programming, an inline assembler is a feature of some compilers that allows low-level code written in assembly language to be embedded within a program, among code that otherwise has been compiled from a higher-level language such as C or Ada.</p>
    </li>
</ul>

<label for="third">You must use the Intel syntax, not the AT&T<br />you must do ’.s’ files</label>
<ul id="third">
    <li>
        <a href="https://stackoverflow.com/questions/34098596/assembly-files-difference-between-a-s-asm">.s vs .asm</a>
    </li>
</ul>

<label for="forth">Registers</label>
<ul id="forth">
    <li>
        <a href="https://riptutorial.com/assembly/example/22706/x64-registers">Registers</a>
    </li>
    <li>
        <a href="https://www.cs.uaf.edu/2017/fall/cs301/lecture/09_11_registers.html">Registers</a>
    </li>
</ul>

<label for="fifth">Beware of the "calling convention"</label>
<ul id="fifth">
    <li>
        <p>In this tutorial, you’ll look at registers the CPU uses and explore and modify parameters passed into function calls. You’ll also learn about common Apple computer architectures and how their registers are used within a function. This is known as an architecture’s calling convention.</p>
    </li>
</ul>

<label for="sixth">syscalls</label>
<ul id="sixth">
    <li>
        <p>System calls are the interface between user programs and the Linux kernel. They are used to let the kernel perform various system tasks, such as file access, process management and networking.</p>
    </li>
</ul>

<label for="seventh">Syntax</label>
<ul id="seventh">
    <li>
        <a href="https://riptutorial.com/x86/example/7935/at-t-assembler---as">AT&T</a>
    </li>
</ul>

<label for="eigthth">Repos</label>
<ul id="eigthth">
    <li>
        <a href="https://github.com/rchallie/libasm">Commented</a>
    </li>
    <li>
        <a href="https://github.com/IamLena/libasm">Commented</a>
    </li>
    <li>
        <a href="https://github.com/Glagan/42-libasm">Glagan</a>
    </li>
</ul>
