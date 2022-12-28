//
//  HomeVC.swift
//  neXjob.in
//
//  Created by Pioneer on 12/12/22.
//

import UIKit



class HomeVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{

    
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewProfileCompletion: UICollectionView!
    
    
    
    @IBOutlet weak var userProfileView: UIView!
    
    @IBOutlet weak var userImage: UIImageView!
    
    
    @IBOutlet weak var btnNeXjob: UIButton!
    
    
    @IBOutlet weak var btnNeXjobPlus: UIButton!
    
    
    @IBOutlet weak var profileCompletionView: UIView!
    
    
    @IBOutlet weak var walletView: UIView!
    
    
    @IBOutlet weak var funnelView: UIView!
    
    
    var profileCompletionNameArr = ["Summery","Persnol","Educaton","Experience","Projects","Feedback"]

    var profileCompletionImageArr = [UIImage(named: "Summery"), UIImage(named: "Persnol"),UIImage(named: "Educaton"),UIImage(named: "Experience"),UIImage(named: "Project"),UIImage(named: "Feedback")]
    override func viewDidLoad() {
        super.viewDidLoad()

        userImage.layer.cornerRadius = 40
        
        btnNeXjob.layer.cornerRadius = 25
        btnNeXjobPlus.layer.cornerRadius = 25

        
        bannerCollectionView.layer.cornerRadius = 10
        bannerCollectionView.layer.borderWidth = 2
        bannerCollectionView.layer.borderColor = #colorLiteral(red: 0.4828204513, green: 0.8001506329, blue: 0.2611076832, alpha: 1)
        bannerCollectionView.clipsToBounds = true
        

        bannerCollectionView.layer.masksToBounds = false
        bannerCollectionView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        bannerCollectionView.layer.shadowOpacity = 0.5
        bannerCollectionView.layer.shadowRadius = 4.0
        bannerCollectionView.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        userProfileView.layer.cornerRadius = 10
        userProfileView.layer.borderWidth = 2
        userProfileView.layer.borderColor = #colorLiteral(red: 0.4828204513, green: 0.8001506329, blue: 0.2611076832, alpha: 1)
        userProfileView.clipsToBounds = true
        

        userProfileView.layer.masksToBounds = false
        userProfileView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        userProfileView.layer.shadowOpacity = 0.5
        userProfileView.layer.shadowRadius = 4.0
        userProfileView.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        profileCompletionView.layer.cornerRadius = 10
        profileCompletionView.layer.borderWidth = 2
        profileCompletionView.layer.borderColor = #colorLiteral(red: 0.4828204513, green: 0.8001506329, blue: 0.2611076832, alpha: 1)
        profileCompletionView.clipsToBounds = true
        

        profileCompletionView.layer.masksToBounds = false
        profileCompletionView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        profileCompletionView.layer.shadowOpacity = 0.5
        profileCompletionView.layer.shadowRadius = 4.0
        profileCompletionView.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        walletView.layer.cornerRadius = 10
        walletView.layer.borderWidth = 2
        walletView.layer.borderColor = #colorLiteral(red: 0.4828204513, green: 0.8001506329, blue: 0.2611076832, alpha: 1)
        walletView.clipsToBounds = true
        

        walletView.layer.masksToBounds = false
        walletView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        walletView.layer.shadowOpacity = 0.5
        walletView.layer.shadowRadius = 4.0
        walletView.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        funnelView.layer.cornerRadius = 10
        funnelView.layer.borderWidth = 2
        funnelView.layer.borderColor = #colorLiteral(red: 0.4828204513, green: 0.8001506329, blue: 0.2611076832, alpha: 1)
        funnelView.clipsToBounds = true
        

        funnelView.layer.masksToBounds = false
        funnelView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        funnelView.layer.shadowOpacity = 0.5
        funnelView.layer.shadowRadius = 4.0
        funnelView.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionBtnNeXjobPlus(_ sender: Any) {
    }
    
    @IBAction func actionBtnNeXjob(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        if collectionView == self.bannerCollectionView {
            return 4
        } else {
            return profileCompletionImageArr.count
            return profileCompletionNameArr.count
        }

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    if collectionView == self.collectionViewProfileCompletion {
    let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier:"ProfileCompletionCell", for: indexPath as IndexPath)as! ProfileCompletionCell
        cell1.imgProfileCompletionCollectionImage.image = profileCompletionImageArr[indexPath.row]
        
        cell1.imgProfileCompletionCollectionImage.image = profileCompletionImageArr[indexPath.row]
        
        cell1.lblProfileComLabel.text = profileCompletionNameArr[indexPath.row]
        return cell1

        } else {

    let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for:indexPath as IndexPath)as! BannerCell
    return cell2
        }

    }


    }


