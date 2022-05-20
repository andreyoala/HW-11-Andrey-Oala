import UIKit

class NewViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        imageView = UIImageView(frame: CGRect(x: 17, y:55, width: 83, height: 83))
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = false
        return imageView
    }()
    private lazy var label: UILabel = {
       label = UILabel()
        label.font = .systemFont(ofSize: 21)
        label.textColor = .white
        label.text = familyNameLabel
    return label
    }()
    private lazy var button: UIButton = {
        button = UIButton(type: .system)
        button.setTitle(setStatusButtonText, for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.masksToBounds = false
        return button
    }()
    private lazy var onlineLabel: UILabel = {
        onlineLabel = UILabel()
        onlineLabel.font = .systemFont(ofSize: 13)
        onlineLabel.text = onlineStatusButtonText
        onlineLabel.textColor = .systemGray
        return onlineLabel
    }()
    private lazy var editButton: UIButton = {
        editButton = UIButton(type: .system)
        editButton.setTitle(editButtonText, for: .normal)
        editButton.setTitleColor(.white, for: .normal)
        editButton.layer.masksToBounds = false
        editButton.layer.cornerRadius = 7
        editButton.backgroundColor = .darkGray
        return editButton
    }()
    private lazy var historyButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = historyButtonText
        config.buttonSize = .large
        config.image = UIImage(systemName: historyButtonImage)
        config.imagePlacement = .top
        config.imagePadding = 5
        let historyButton = UIButton(configuration: config)
        return historyButton
    }()
    private lazy var newNoteButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = noteButtonText
        config.buttonSize = .large
        config.image = UIImage(systemName: newNoteButtonImage)
        config.imagePlacement = .top
        config.imagePadding = 5
        let newNoteButton = UIButton(configuration: config)
        return newNoteButton
    }()
    private lazy var photoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = photoButtonText
        config.buttonSize = .large
        config.image = UIImage(systemName: photoButtonImage)
        config.imagePlacement = .top
        config.imagePadding = 5
        let photoButton = UIButton(configuration: config)
        return photoButton
    }()
    private lazy var clipsButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = clipsButtonText
        config.buttonSize = .large
        config.image = UIImage(systemName: clipButtonImage)
        config.imagePlacement = .top
        config.imagePadding = 5
        let clipsButton = UIButton(configuration: config)
        return clipsButton
    }()
    
    private lazy var cityButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = cityButtonText
        config.buttonSize = .small
        config.image = UIImage(systemName: cityButtonImage)
        config.imagePlacement = .leading
        config.imagePadding = 8
        let cityButton = UIButton(configuration: config)
        cityButton.tintColor = .systemGray3
        cityButton.titleLabel?.textAlignment = .center
        return cityButton
    }()
    private lazy var subscribersButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = subscribersButtonText
        config.buttonSize = .small
        config.image = UIImage(systemName: subscribersButtonImage)
        config.imagePlacement = .leading
        config.imagePadding = 8
        let subscribersButton = UIButton(configuration: config)
        subscribersButton.tintColor = .systemGray3
        subscribersButton.titleLabel?.textAlignment = .center
        return subscribersButton
    }()
    
    private lazy var jobButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = jobButtonText
        config.buttonSize = .small
        config.image = UIImage(systemName: jobButtonImage)
        config.imagePlacement = .leading
        config.imagePadding = 8
        let jobButton = UIButton(configuration: config)
        jobButton.tintColor = .systemBlue
        jobButton.titleLabel?.textAlignment = .center
        return jobButton
    }()
    private lazy var receiveGiftButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = receiveGiftButtonText
        config.buttonSize = .small
        config.image = UIImage(systemName: receiveGiftButtonImage)
        config.imagePlacement = .leading
        config.imagePadding = 8
        let receiveGiftButton = UIButton(configuration: config)
        receiveGiftButton.tintColor = .systemIndigo
        receiveGiftButton.titleLabel?.textAlignment = .center
        return receiveGiftButton
    }()
    private lazy var infoButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = infoButtonText
        config.buttonSize = .small
        config.image = UIImage(systemName: infoButtonImage)
        config.imagePlacement = .leading
        config.imagePadding = 8
        let infoButton = UIButton(configuration: config)
        infoButton.tintColor = .white
        infoButton.titleLabel?.textAlignment = .center
        return infoButton
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupView()
        setupLayout()
    }
    //MARK: - Settings
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(onlineLabel)
        view.addSubview(editButton)
        view.addSubview(historyButton)
        view.addSubview(newNoteButton)
        view.addSubview(photoButton)
        view.addSubview(clipsButton)
        view.addSubview(cityButton)
        view.addSubview(subscribersButton)
        view.addSubview(jobButton)
        view.addSubview(receiveGiftButton)
        view.addSubview(infoButton)
        
    }
    private func setupLayout() {
        
        // Name label layout
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorForTop).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: Metric.labelTopOffset).isActive = true
        
        // Button for status layout
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: label.topAnchor, constant: Metric.spaceBetweenTopLabels).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.leftAnchorForTop).isActive = true
        
        // online label layout
        
        onlineLabel.translatesAutoresizingMaskIntoConstraints = false
        onlineLabel.leftAnchor.constraint(equalTo: button.leftAnchor, constant: 0).isActive = true
        onlineLabel.topAnchor.constraint(equalTo: button.topAnchor, constant: Metric.spaceBetweenTopLabels).isActive = true
        
        // Edit button layout
        
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.topAnchor.constraint(equalTo: onlineLabel.topAnchor, constant: 50).isActive = true
        editButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        editButton.heightAnchor.constraint(equalToConstant: Metric.editButtonHeight).isActive = true
        editButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: Metric.editButtonWidthMultiplyer).isActive = true
        
        // History button icon layout
        
        historyButton.translatesAutoresizingMaskIntoConstraints = false
        historyButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45).isActive = true
        historyButton.topAnchor.constraint(equalTo: editButton.topAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        historyButton.widthAnchor.constraint(equalToConstant: Metric.widthForBigIconButtons).isActive = true
        historyButton.heightAnchor.constraint(equalToConstant: Metric.heightForBigIconButtons).isActive = true
        
        // New Note button icon layout
        
        newNoteButton.translatesAutoresizingMaskIntoConstraints = false
        newNoteButton.leftAnchor.constraint(equalTo: historyButton.rightAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        newNoteButton.topAnchor.constraint(equalTo: editButton.topAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        newNoteButton.widthAnchor.constraint(equalToConstant: Metric.widthForBigIconButtons).isActive = true
        newNoteButton.heightAnchor.constraint(equalToConstant: Metric.heightForBigIconButtons).isActive = true
        
        // Photo button icon layout
        
        photoButton.translatesAutoresizingMaskIntoConstraints = false
        photoButton.leftAnchor.constraint(equalTo: newNoteButton.rightAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        photoButton.topAnchor.constraint(equalTo: editButton.topAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        photoButton.widthAnchor.constraint(equalToConstant: Metric.widthForBigIconButtons).isActive = true
        photoButton.heightAnchor.constraint(equalToConstant: Metric.heightForBigIconButtons).isActive = true
        
        // Clips button icon layout
        
        clipsButton.translatesAutoresizingMaskIntoConstraints = false
        clipsButton.leftAnchor.constraint(equalTo: photoButton.rightAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        clipsButton.topAnchor.constraint(equalTo: editButton.topAnchor, constant: Metric.spaceUnderEditButton).isActive = true
        clipsButton.widthAnchor.constraint(equalToConstant: Metric.widthForBigIconButtons).isActive = true
        clipsButton.heightAnchor.constraint(equalToConstant: Metric.heightForBigIconButtons).isActive = true
        
        // City button icon layout
        
        cityButton.translatesAutoresizingMaskIntoConstraints = false
        cityButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.smallButtonsLeftAnchorSpace).isActive = true
        cityButton.topAnchor.constraint(equalTo: historyButton.topAnchor, constant: 70).isActive = true
        
        // Subscribers button icon layout
        
        subscribersButton.translatesAutoresizingMaskIntoConstraints = false
        subscribersButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.smallButtonsLeftAnchorSpace).isActive = true
        subscribersButton.topAnchor.constraint(equalTo: cityButton.topAnchor, constant: 35).isActive = true
        
        // Career button icon layout
        
        jobButton.translatesAutoresizingMaskIntoConstraints = false
        jobButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.smallButtonsLeftAnchorSpace).isActive = true
        jobButton.topAnchor.constraint(equalTo: subscribersButton.topAnchor, constant: 35).isActive = true
        
        // Gift receive button icon layout
        
        receiveGiftButton.translatesAutoresizingMaskIntoConstraints = false
        receiveGiftButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.smallButtonsLeftAnchorSpace).isActive = true
        receiveGiftButton.topAnchor.constraint(equalTo: jobButton.topAnchor, constant: 35).isActive = true
        
        // Info button icon layout
        
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        infoButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: Metric.smallButtonsLeftAnchorSpace).isActive = true
        infoButton.topAnchor.constraint(equalTo: receiveGiftButton.topAnchor, constant: 35).isActive = true
        
    }
    private func setupView() {
        view.backgroundColor = .black
    }
    // MARK: - Constants
    
    enum Metric {
        static let labelTopOffset: CGFloat = 60
        static let leftAnchorForTop: CGFloat = 120
        static let spaceBetweenTopLabels: CGFloat = 25
        static let editButtonHeight: CGFloat = 27
        static let editButtonWidthMultiplyer: CGFloat = 0.93
        static let spaceUnderEditButton: CGFloat = 60
        static let widthForBigIconButtons: CGFloat = 30
        static let heightForBigIconButtons: CGFloat = 30
        static let smallButtonsLeftAnchorSpace: CGFloat = 10
    }
    // MARK: - Strings
    
    private lazy var familyNameLabel = "Andrey Oala"
    private lazy var setStatusButtonText = "Установить статус"
    private lazy var onlineStatusButtonText = "Online"
    private lazy var editButtonText = "Редактировать"
    private lazy var historyButtonText = "History"
    private lazy var noteButtonText = "Note"
    private lazy var photoButtonText = "Photo"
    private lazy var clipsButtonText = "Clips"
    private lazy var cityButtonText = "City: Moscow"
    private lazy var subscribersButtonText = "35 Subscribers"
    private lazy var jobButtonText = "Career"
    private lazy var receiveGiftButtonText = "Receive a gift >"
    private lazy var infoButtonText = "Info"
    
    // MARK: - Icons
    
    private lazy var historyButtonImage = "camera"
    private lazy var newNoteButtonImage = "square.and.pencil"
    private lazy var photoButtonImage = "photo"
    private lazy var clipButtonImage = "video"
    private lazy var cityButtonImage = "house"
    private lazy var subscribersButtonImage = "dot.radiowaves.up.forward"
    private lazy var jobButtonImage = "bag"
    private lazy var receiveGiftButtonImage = "snowflake"
    private lazy var infoButtonImage = "info.circle"
}

