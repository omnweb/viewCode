import UIKit
import SnapKit


class ElectionSpecialCardView: UITableViewCell {
    lazy var box = UIView()
    lazy var whiteBox = UIView()
    lazy var backgroundImageSpecialCard = UIImage(imageLiteralResourceName: "SpecialPostsFrame")
    lazy var imageSpecialCard = UIImageView(image: backgroundImageSpecialCard)
    lazy var electionLogo = UIImage(imageLiteralResourceName: "ElectionLogo")
    lazy var electionLogoImage = UIImageView(image: electionLogo)
    lazy var title = UILabel()
    lazy var subtitle = UILabel()
    lazy var cardImage = UIImage(imageLiteralResourceName: "ProposalImage")
    lazy var electionCardImage = UIImageView(image: cardImage)
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
      }
    
    private func setupCell() {
        box.addSubview(whiteBox)
        whiteBox.addSubview(imageSpecialCard)
        whiteBox.addSubview(electionLogoImage)
        box.addSubview(electionCardImage)
        whiteBox.addSubview(title)
        whiteBox.addSubview(subtitle)
        addSubview(box)
        
        box.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.height.equalTo(157)
            make.right.left.equalToSuperview()
        }
        
        whiteBox.snp.makeConstraints { make in
            make.right.bottom.equalToSuperview().inset(16)
            make.top.left.equalToSuperview().offset(16)
            
        }
        
        imageSpecialCard.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        electionLogoImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.left.equalToSuperview().offset(17.06)
        }
        
        title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(57)
            make.left.equalToSuperview().offset(13)
        }
        
        subtitle.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(12)
            make.left.equalToSuperview().offset(13)
            make.width.equalTo(213)
            make.height.equalTo(31)
        }
        
        electionCardImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(6)
            make.right.equalToSuperview().inset(18)
        }
        
        box.backgroundColor = UIColor(named: "BackgroundCard")
        whiteBox.backgroundColor = UIColor(named: "BackgroundWhiteBox")
        whiteBox.layer.cornerRadius = 15
        title.text = "Propostas"
        title.textColor = .red
        title.font = title.font.withSize(24)
        subtitle.text = "Veja as propostas de cada\n candidato por área de atuação"
        subtitle.lineBreakMode = .byWordWrapping
        subtitle.numberOfLines = 0
        subtitle.font = title.font.withSize(13)
//        subtitle.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
