import int_stuff.int_swap as int_swap // bring in the module for use

fn main () {
    // you have to state when something comes from a seperate module
	mut s := int_swap.Swappable{a: 10, b:5}

    // here we dpn't have to specify int_swap.s.str() or int_swap.s.swap(),
    // because we've already stated that Swappable is from int_swap
	println('before swap:\n'+s.str())
	s.swap()
	println('after swap:\n' + s.str())
    
    // if we were to call something else from the module, we'd need to specify it 
    
    println(int_swap.ModuleName) // should work
    // println(ModuleName) should error
}