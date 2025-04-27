use std::fs::File;
use std::io::Read;
 
fn main() -> Result<(), std::io::Error> {
 
    let mut content = String::new();
 
    let mut file = File::open("/var/tmp/wm/tag")?;
    
    file.read_to_string(&mut content)?;
 
    println!("{}", content);
    Ok(())
}
