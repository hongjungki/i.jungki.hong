//
//  ViewController.m
//  testAlert0302
//
//  Created by 홍정기 on 2017. 3. 2..
//  Copyright © 2017년 ios school. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property UIImagePickerController *imageController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    UIImagePickerController *imageController = [[UIImagePickerController alloc]init];
//    imageController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    imageController.allowsEditing = NO;
//    imageController.delegate = self;
//    [self presentViewController:imageController animated:YES completion:nil];
    
}

- (IBAction)imageBtn:(id)sender {
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
    [alertImage addAction:okAction1];
    [alertImage addAction:okAction];
    [self presentViewController:alertImage animated:YES completion:nil];
    
   }
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    NSLog(@" info %@",info);
    UIImage *image  = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
