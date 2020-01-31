module int_swap // this is the module name
                // they can be any length, but are recommended to be less than 10 chars

// you can declare anything in the module itself
import int_stuff.int_add as add

pub const (
    ModuleName = 'int_swap'
)

pub struct Swappable { 
	pub mut:
	a int
	b int
}

// functions that are only used internally by the module are defined as normal
fn (swapped Swappable) to_string() string {
    return ModuleName+'\na : '+ swapped.a.str() + '\nb : ' + swapped.b.str()
}

// those called by external code require the pub keyword

// these could be considered the public interface of the module
pub fn (swapped Swappable)str() string {
	println('const from int_add ${add.constant}')
	return swapped.to_string()
}

pub fn (swapped mut Swappable)swap() {
	swapped.a += swapped.b
	swapped.b = swapped.a - swapped.b
	swapped.a = swapped.a - swapped.b
}