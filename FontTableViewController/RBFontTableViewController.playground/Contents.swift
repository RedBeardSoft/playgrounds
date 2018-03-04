//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class FontTableViewController : UITableViewController {
	
	let allFonts: [String] = {
		return UIFont.familyNames.sorted()
	}()
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return allFonts.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
		
		let font = allFonts[indexPath.row]
		
		cell.textLabel?.font = UIFont(name: font, size: 24.0)
		cell.textLabel?.text = font
		cell.detailTextLabel?.text = font
		
		return cell
	}
	
}

let fonttableViewController = FontTableViewController(style: .plain)

PlaygroundPage.current.liveView = fonttableViewController
