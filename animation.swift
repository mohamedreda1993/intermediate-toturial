//
//  ViewController.swift
//  animation
//
//  Created by mohamed on 2/15/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingc: NSLayoutConstraint!
    @IBOutlet weak var topc: NSLayoutConstraint!
    @IBOutlet weak var myview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
         //how to hiden view:ازاى اخفى اللشكل
      // myview.alpha = 0.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showb(_ sender: Any) {
    UIView.animate(withDuration: 1.0, animations:
        {
            /*
            // how to change color:ازاى اغير اللون
            self.myview.backgroundColor=UIColor.red
            //how to hiden view:ازاى اخفى اللشكل
            self.myview.alpha = 1.0
            //how to transform view:ازاى تحول او تكبر الشكل
            // note:x increase from left and y:increase from down
            //جعل القيمتين متساوية تعني مضاعفة ابعاد المربع بالتساوي
             self.myview.transform = CGAffineTransform(scaleX: 2, y: 2)
            //اذا اردت التصغير فيتم استخدام نفس الكود السابق ولكن يتم إعطاء قيمة اصغر من 1
            self.myview.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
//التحريك بشكل عمودي :
            //قيمة x بـ 0 لأننا لا نريد تحريك المربع بشكل افقي
          //  قيمة y بـ 400 لأننا نريد تحريكه للأسفل بمقدار 400
            self.myview.transform = CGAffineTransform(translationX:0, y: 400)
            //التحريك بشكل أفقي :
            //الأن نريد تحريك المربع بشكل افقي الى اليسار
            //تم إعطاء قيمة x بـ -122 لأننا نريد تحريك المربع لليسار
           // اذا تم إعطاء قيمة موجبة سيتحرك المربع لليمين ، تذكر صورة الإحداثيات
            //وتم إعطاء قيمة y بـ 0 لأننا لا نريد تحريكه بشكل عمودي
            self.myview.transform = CGAffineTransform(translationX:-122, y: 0)
            //ماذا اذا اعطينا قيمة لـ x وقيمة أخرى لـ y ؟
            self.myview.transform = CGAffineTransform(translationX:122, y: 300)
         */
            //ماذا اذا اردنا التفاف المربع الى اليمين ؟
           // self.myview.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
            //ماذا اذا اردنا التحريك بشكل عمودي والالتفاف في آنٍ واحد ؟
              //self.myview.transform = CGAffineTransform(translationX:0, y: 300).rotated(by: CGFloat(Double.pi/2))
            //ماذا اذا اردنا تنفيذ كود التحريك بالعكس دون الحاجة الى كتابة الاكواد من جديد ؟
            //بما يعني عند الضغط على الزر مره اخرى فإنه يقوم بإعادة المربع الى موقع الاول !
            //كل ما علينا فعله هو الاستفادة من property في الـ CGAffineTransform
                 // تدعى  identity
 //وظيفتها تقوم بحفظ الاحداتياث قبل تنفيذ الـ animations
           /*
            if self.myview.transform == CGAffineTransform.identity{
                
                
                
                self.myview.transform = CGAffineTransform(translationX:0, y: 300).rotated(by: CGFloat(Double.pi/2))
                
            }else {
                
                
                
                self.myview.transform = CGAffineTransform.identity
                
                
                
            }*/
            //عمل animations مع الـ  Auto Layout
            //نحن نحتاج الى  الـ Top وهو المسؤول عن التحريك بشكل عمودي
           // وأيضا نحتاج الى الـ Leading وهو المسؤول عن التحريك بشكل افقي
            //تحريك المربع بشكل عمودي :
            //لذا لتحريك المربع الى الأسفل نقوم بكتابة السطر التالي
            //الذي قمنا به هنا هو تغير قيمة الـ top
            self.topc.constant = 400
            //السطر هذا وظيفته تحديث الـ Auto Layout
            self.view.layoutIfNeeded()
            //تحريك المربع بشكل افقي :
            //نحتاج أولا تغيير القيود ومن ثم إضافة الـ LayoutConstraint
           // الخاص بـ Trailing
//            /ومن ثم كتابة هذه الأسطر :
            /*
             //الذي قمنا به هو تغير القيود من الجانب الأيمن والايسر وبالتالي يتم تصغير المربع مع المحافظة على موقعه
            self.Leading.constant = 150
            self.Trailing.constant = 150
            self.view.layoutIfNeeded()
 */
            //عند كتابة UiView.animate
           // سوف تلاحظ وجود 4 أنواع
            //الشكل النهائي سوف يكون بالشكل التالي :
            UIView.animate(withDuration: 1.0, delay: 0.0, options:[], animations: {
                
                
                
                
                
            }, completion: nil)
            /*
            //withDuration : ومعناها كم الفترة المرادة لعمل الـ Animation
            بالثانية الواحده ، ربما لاحظت بأني اضعها دائما "ثانية واحده" ولكن غالبا راح تحتاج أن تضعها من 0.5 الى 0.3 ، لانها تعتبر افضل مدة لأغلب الـ Animation
             //delay : هذا الخيار جديد ، ومعناه التأخير ، كم الفترة التي تريد فيها الانتظار قبل ان يبدا الـ Animation ؟
             اجعله على 0.0 في حال اردت ان يبدا مباشرةً بدون تأخير
 */

    })
        /*
       // ماذا اذا اردنا تنفيذ Animation اخر بعد انتهاء الأول وليس في نفس الوقت ؟
        UIView.animate(withDuration: 0.1, animations: {
            //ماذا اذا اردنا التحريك بشكل حرف L ؟
            self.myview.transform = CGAffineTransform(translationX:0, y: 300)
        }) { (true) in
            UIView.animate(withDuration: 0.1, animations: {
                //ماذا اذا اردنا التحريك بشكل حرف L ؟
                self.myview.transform = CGAffineTransform(translationX:-122, y: 300)
         //options : هذا أيضا من ضمن الخيارات الجديدة وسيكون اغلب شرحنا يتركز عليه ، لذا سيتم شرحه في الفقرة التالية
         
         في الوقت الراهن ، الذي يفترض معرفته هو عند وضع علامة مربع الاريه [] تعني استخدم النوع الافتراضي
         وأيضا باستطاعتك وضع عدة options وذلك بكتابة علامة الاريه [] ووضع عدة أنواع والفصل فيما بينهم بعلامة الفاصلة ,
         /completion : تم ذكره سابقا ومعناه عند اكتمال الـ Animation ماذا تريد ان تفعل ؟ ، وضعنا هنا nil لأننا لا نريد تنفيذ امرا بعد انتهاء الـ Animation .
         //أنواع الـ Options :
         
         هناك عدة أنواع للـ Animation سوف نتطرق الى اهمها
         هناك ٤ انواع رئيسية مسؤوله عن سرعة الـ Animation ، وهيا :
         curveLinear : ويعني يبدا الـ Animation بنفس السرعة وينتهي بنفس السرعة (لا يحدث اختلاف في السرعة)
         curveEaseIn : ويعني يبدا الـ Animation بسرعة بطيئة ومن ثم يزداد سرعته (يبدا بطئي وينتهي
         curveEaseOut : ويعني يبدا الـ Animation بسرعة وينتهي ببطئ (يبدا بسرعة وينتهي ببطئ)
         curveEaseInOut : هذا النوع هو الافتراضي،  ويعني يبدا الـ Animation ببطئ ومن ثم يسرع وينتهي ببطئ (يبدا وينتهي ببطئ)
         //كيف يتم كتابة الـ Options ؟
         قم بكتابة علامة الـ . ومن ثم اكتب حرف c لتقوم بفلترة النتائج ولتظهر الانواع الأربعة السابقة ومن ثم اختار النوع الذي تريده
         //مثال لطريقة الكتابة
         UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseIn, animations: {
                  self.squareView.transform = CGAffineTransform(translationX: 0, y: 400)
         
         }, completion: nil)

            })
         
        }
         //autorevers : باختصار هو عملية تكرار "لمره واحده" بحيث يتم عمل الـ Animation وعند الانتهاء اعادته بالعكس "مره واحده" ومن ثم يتوقف
         //UIView.animate(withDuration: 1.0, delay: 0.0, options: .autoreverse, animations: {
         
         
         
         self.squareView.transform = CGAffineTransform(translationX: 0, y: 400)
         
         
         
         }, completion: nil)
         //repeat: هو التكرار ، يمكن تشبيه بأنه كالصورة المتحركة عندما ينتهي يعيد من البداية وهكذا (سوف تلاحظ بانه تمت عملية قطع فجائية للـ Animation)
         UIView.animate(withDuration: 1.0, delay: 0.0, options: .repeat, animations: {
         self.squareView.transform = CGAffineTransform(translationX: 0, y: 400)
         
         }, completion: nil)
         //اخر خيار هو allowUserInteraction :
         كما هو واضح من اسمه ، السماح بتفاعل المستخدم مع الـ view اثناء الـ Animation !
         UIView.animate(withDuration: 3.0, delay: 0.0, options: [.autoreverse], animations: {
         
         self.squareView.transform = CGAffineTransform(translationX: 0, y: 400)
    
         }, completion: nil)
         
         الان سوف نتعلم نوع اخر للـ Uiview.animate
         النوع هذا يطلق عليه Spring Animation
         معنى الـ Spring هو النابض
         بمعنى ارتداد الـ Animation
         سوف تتضح فكرة الـ Spring Animation
         UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.0, options:.curveEaseOut, animations: {
         
         self.squareView.transform = CGAffineTransform(translationX:0, y: 400)
    
         }, completion: nil)
         usingSpringWithDamping : ويعني هذا الخيار بالتذبذب (مقدار الاهتزاز) كل ما كان الرقم قريب من الصفر كان مقدار الاهتزاز اعلى ، بما يعني القيمة تكون اقل من 1 واكبر من 0
         وضعنا هنا قيمة 0.3 يمكنك التجربة لاستيعاب الفكرة
         initialSpringVelocity : هذا الخيار المقصود به هو سرعة الاندفاع في البداية  ، آبل تنصح بجعله بقيمة 0
         يمكنك تغير قيمته أيضا من بين قيمة اقل من 1 واكبر من
         مثال لأحدى الاستخدامات للـ Spring Animation
         لنفترض تريد عمل رسالة تنبيه للمستخدم بإظهارها بشكل الـ popup
         باستطاعتك عملها بالطريقة التالية :
         بداية سوف نغير لون وحجم المربع الأزرق ونضعه في المنتصف
       
         ونضيف label وزر لجعله كالـ popup0
         override func viewDidLoad() {
         super.viewDidLoad()
         squareView.layer.cornerRadius = 20
         squareView.layer.borderWidth = 1
         squareView.layer.borderColor = UIColor.lightGray.cgColor
         squareView.alpha = 0.0
         
         }
         باختصار UIView.animate مسؤول عن ملكية الـ UIView من عمل تحريك وتكبير والتفاف وغيرها
         في حين UIView.transition مسؤول عن إضافة وحذف الـ View
         الـ .alpha هي الشفافية
       
         بمعنى 1 يعتبر لا توجد شفافية في حين 0.5 تعني وجود شفافية و 0 يعني انعدام الشفافية
         في الـ Layer
         في الألوان نستخدم نوع cgColor
         وليست UIColor
         عمل Animation للظل ! :
         بالنسبة للظل هناك 4 أمور تؤثر على الظل
         shadowOpacity : شفافية الظل ، 0 تعني اختفاء الظل و 1 ظهوره
         shadowOffset : موقع الظل
         shadowRadius : كثافة الظل ، كل ما زاد الرقم اصبح "عرض" الظل اكبر         
         shadowColor : لون الظل
*/
    }

}
