//
//  ImageChangeViewController.m
//  TestNet0315
//
//  Created by 홍정기 on 2017. 3. 15..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ImageChangeViewController.h"

@interface ImageChangeViewController ()
<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageChangeView;
@property UIImagePickerController *imageController;

@end

@implementation ImageChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}
- (IBAction)imageChangeBtn:(id)sender {
    UIAlertController *alertImage = [UIAlertController alertControllerWithTitle:@"사진" message:@"사진선택" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"사진" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIImagePickerController *imageController = [[UIImagePickerController alloc]init];
        imageController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        imageController.allowsEditing = NO;
        imageController.delegate = self;
        [self presentViewController:imageController animated:YES completion:nil];
        
    }];
    UIAlertAction *okAction1 = [UIAlertAction actionWithTitle:@"카메라" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIImagePickerController *imageController = [[UIImagePickerController alloc]init];
        imageController.sourceType = UIImagePickerControllerSourceTypeCamera;
        imageController.allowsEditing = NO;
        imageController.delegate = self;
        [self presentViewController:imageController animated:YES completion:nil];
        
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
   
    
    [alertImage addAction:okAction1];
    [alertImage addAction:okAction];
     [alertImage addAction:cancelAction];
    [self presentViewController:alertImage animated:YES completion:nil];

}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    NSLog(@" info %@",info);
    UIImage *image  = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imageChangeView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   }


@end
