.class public Lcom/android/camera/tutorial/TutorialPage;
.super Landroid/app/Activity;
.source "TutorialPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/tutorial/TutorialPage$3;,
        Lcom/android/camera/tutorial/TutorialPage$TutorialMode;,
        Lcom/android/camera/tutorial/TutorialPage$ActivityState;
    }
.end annotation


# static fields
.field private static final START_ALPHA:F = 85.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private demoBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private mActivityStatus:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

.field private mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/tutorial/TutorialPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$ActivityState;->UNKNOWN:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

    iput-object v0, p0, Lcom/android/camera/tutorial/TutorialPage;->mActivityStatus:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->UNKNOWN:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    iput-object v0, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    new-instance v0, Lcom/android/camera/tutorial/TutorialPage$2;

    invoke-direct {v0, p0}, Lcom/android/camera/tutorial/TutorialPage$2;-><init>(Lcom/android/camera/tutorial/TutorialPage;)V

    iput-object v0, p0, Lcom/android/camera/tutorial/TutorialPage;->demoBtnOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/tutorial/TutorialPage;)Lcom/android/camera/tutorial/TutorialPage$TutorialMode;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    return-object v0
.end method

.method private getInfoFromIntent()V
    .locals 3

    sget-object v1, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v2, "getInfoFromIntent function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/tutorial/TutorialPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.camera.tutorial.CAMERA_MODE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->CAMERA:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    iput-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.camera.tutorial.GALLERY_MODE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->GALLERY:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    iput-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->UNKNOWN:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    iput-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    goto :goto_0
.end method

.method private setupCommonUI()V
    .locals 5

    sget-object v3, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v4, "setupCommonUI function"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/tutorial/TutorialPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x20801c1

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v3, 0x7f08018b

    invoke-virtual {p0, v3}, Lcom/android/camera/tutorial/TutorialPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x2020053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/tutorial/TutorialPage;->setupPageTitle(Landroid/widget/TextView;)V

    :cond_0
    const v3, 0x2020054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/tutorial/TutorialPage;->setupPageTitle(Landroid/widget/TextView;)V

    :cond_1
    const v3, 0x7f08018c

    invoke-virtual {p0, v3}, Lcom/android/camera/tutorial/TutorialPage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const v3, 0x2020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    const v3, 0x7f0a0192

    invoke-virtual {p0, v3}, Lcom/android/camera/tutorial/TutorialPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/camera/tutorial/TutorialPage$1;

    invoke-direct {v3, p0}, Lcom/android/camera/tutorial/TutorialPage$1;-><init>(Lcom/android/camera/tutorial/TutorialPage;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v3, 0x2020003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    const v3, 0x7f0a0193

    invoke-virtual {p0, v3}, Lcom/android/camera/tutorial/TutorialPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/camera/tutorial/TutorialPage;->demoBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private setupPageTitle(Landroid/widget/TextView;)V
    .locals 2

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v1, "setupPageTitle function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$3;->$SwitchMap$com$android$camera$tutorial$TutorialPage$TutorialMode:[I

    iget-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    invoke-virtual {v1}, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0a0190

    invoke-virtual {p0, v0}, Lcom/android/camera/tutorial/TutorialPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addReflectionOfOrgTurtorialImg(IIII)V
    .locals 9

    const/high16 v8, 0x3f80

    sget-object v6, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v7, "addReflectionOfOrgTurtorialImg function"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/tutorial/TutorialPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/tutorial/TutorialPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p0}, Lcom/android/camera/tutorial/TutorialPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    if-eqz v1, :cond_0

    if-lez v3, :cond_0

    if-ltz v0, :cond_0

    const/4 v6, 0x0

    const/high16 v7, 0x42aa

    invoke-static {v1, v6, v0, v3, v7}, Lcom/android/camera/tutorial/imageEffect/ImageEffect;->addReflection(Landroid/graphics/Bitmap;IIIF)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p4}, Lcom/android/camera/tutorial/TutorialPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_0
    if-lez v3, :cond_1

    if-gez v0, :cond_2

    :cond_1
    sget-object v6, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v7, "The parameter of reflection image is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v7, "Can not get the original tutorial image."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v7, "Can not set the tutorial image with reflection."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$3;->$SwitchMap$com$android$camera$tutorial$TutorialPage$TutorialMode:[I

    iget-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    invoke-virtual {v1}, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/tutorial/TutorialPage;->setupCommonUI()V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/android/camera/tutorial/TutorialPage;->setContentView(I)V

    const v0, 0x7f020106

    const v1, 0x7f0b00c9

    const v2, 0x7f0b00ca

    const v3, 0x7f08018e

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/tutorial/TutorialPage;->addReflectionOfOrgTurtorialImg(IIII)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v1, "onCreate function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$ActivityState;->ACT_CREATE:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

    iput-object v0, p0, Lcom/android/camera/tutorial/TutorialPage;->mActivityStatus:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

    invoke-direct {p0}, Lcom/android/camera/tutorial/TutorialPage;->getInfoFromIntent()V

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$3;->$SwitchMap$com$android$camera$tutorial$TutorialPage$TutorialMode:[I

    iget-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    invoke-virtual {v1}, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/tutorial/TutorialPage;->setupCommonUI()V

    return-void

    :pswitch_0
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/android/camera/tutorial/TutorialPage;->setContentView(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v1, "onStart function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$ActivityState;->ACT_START:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

    iput-object v0, p0, Lcom/android/camera/tutorial/TutorialPage;->mActivityStatus:Lcom/android/camera/tutorial/TutorialPage$ActivityState;

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage$3;->$SwitchMap$com$android$camera$tutorial$TutorialPage$TutorialMode:[I

    iget-object v1, p0, Lcom/android/camera/tutorial/TutorialPage;->mTutorialMode:Lcom/android/camera/tutorial/TutorialPage$TutorialMode;

    invoke-virtual {v1}, Lcom/android/camera/tutorial/TutorialPage$TutorialMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/camera/tutorial/TutorialPage;->TAG:Ljava/lang/String;

    const-string v1, "No mode is assigned, so we don\'t create reflection image."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f020106

    const v1, 0x7f0b00c9

    const v2, 0x7f0b00ca

    const v3, 0x7f08018e

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/tutorial/TutorialPage;->addReflectionOfOrgTurtorialImg(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
