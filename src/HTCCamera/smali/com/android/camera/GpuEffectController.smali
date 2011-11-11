.class public Lcom/android/camera/GpuEffectController;
.super Ljava/lang/Object;
.source "GpuEffectController.java"

# interfaces
.implements Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;
.implements Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/GpuEffectController$CustomPropSet;,
        Lcom/android/camera/GpuEffectController$EffectAdapter;,
        Lcom/android/camera/GpuEffectController$GpuEffect;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpuEffectController"


# instance fields
.field private barClickListener:Landroid/view/View$OnClickListener;

.field private cProp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/GpuEffectController$CustomPropSet;",
            ">;"
        }
    .end annotation
.end field

.field private effect_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private effect_touch_listener:Landroid/view/View$OnTouchListener;

.field private isControlVisible:Z

.field private isCustomStore:Z

.field private lessBtn:Landroid/view/View;

.field private mCamControl:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCurrEffect:Ljava/lang/String;

.field private mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

.field private mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

.field private mEffectBar:Lcom/android/camera/widget/EffectControlBar;

.field private mEffectCircle:Lcom/android/camera/widget/EffectCircle;

.field private mEffectLayout:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mEffectList:Landroid/widget/ListView;

.field private mISOValue:Ljava/lang/String;

.field private mPanel:Lcom/android/camera/widget/Panel;

.field private moreBtn:Landroid/view/View;

.field oldCamcorderSceneValue:Ljava/lang/String;

.field oldCameraSceneValue:Ljava/lang/String;

.field private propKeySet:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mCamControl:Lcom/android/camera/CameraController;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mEffectLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    const-string v0, "none"

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mISOValue:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contrast"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "exposure-compensation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "saturation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sharpness"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->propKeySet:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/camera/GpuEffectController;->isCustomStore:Z

    new-instance v0, Lcom/android/camera/GpuEffectController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/GpuEffectController$1;-><init>(Lcom/android/camera/GpuEffectController;)V

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->barClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/camera/GpuEffectController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/GpuEffectController$2;-><init>(Lcom/android/camera/GpuEffectController;)V

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->effect_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/camera/GpuEffectController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/GpuEffectController$3;-><init>(Lcom/android/camera/GpuEffectController;)V

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->effect_touch_listener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/GpuEffectController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/EffectControlBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/GpuEffectController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/GpuEffectController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/Panel;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/GpuEffectController$EffectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCamControl:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method private customProp()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    move v4, v6

    :goto_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->propKeySet:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/camera/GpuEffectController$CustomPropSet;

    invoke-direct {v7, p0, v2}, Lcom/android/camera/GpuEffectController$CustomPropSet;-><init>(Lcom/android/camera/GpuEffectController;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/GpuEffectController;->getPropNewValue(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v7, 0x2c

    invoke-static {v6, v7, v5, v9, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v6, "GpuEffectController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Custom properties key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,newValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v4, v9

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getListOrientation(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPrefCameraEffectType()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_effect"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpuEffectController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrefenceValue PREF_CAMERA_EFFECT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "none"

    goto :goto_0
.end method

.method private getPrefVideoEffectType()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_video_effect"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpuEffectController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrefenceValue PREF_VIDEO_EFFECT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "none"

    goto :goto_0
.end method

.method private getPropNewValue(Ljava/lang/String;)I
    .locals 4

    const-string v3, "vignette"

    const/4 v0, 0x0

    const-string v1, "contrast"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v2, "vignette"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    :cond_0
    const-string v1, "saturation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v2, "vignette"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    const-string v1, "exposure-compensation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v2, "vignette"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    const-string v1, "sharpness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    :cond_3
    return v0
.end method

.method private recoverCustomProp()V
    .locals 7

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/GpuEffectController$CustomPropSet;

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x2c

    iget v4, v1, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "GpuEffectController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recover Custom properties key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,original_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private resetAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->access$700(Lcom/android/camera/GpuEffectController$EffectAdapter;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private resetAdapter(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/GpuEffectController$EffectAdapter;->access$800(Lcom/android/camera/GpuEffectController$EffectAdapter;I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private restoreSceneValue()V
    .locals 8

    const/4 v5, 0x0

    const/16 v4, 0x3a

    const/4 v3, 0x0

    const-string v7, "auto"

    const-string v6, "AutoScene.Enabled"

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_scene"

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    invoke-static {v0, v4, v3, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BooleanEvent;

    const-string v2, "AutoScene.Enabled"

    invoke-direct {v1, v6, v3}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_1
    iput-object v5, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_video_scene"

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    invoke-static {v0, v4, v3, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BooleanEvent;

    const-string v2, "AutoScene.Enabled"

    invoke-direct {v1, v6, v3}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_5
    iput-object v5, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private setEffectContrast()V
    .locals 2

    const-string v0, "GpuEffectController"

    const-string v1, "EffectContrast"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setEffectDepth()V
    .locals 5

    const/16 v4, 0x32

    const/4 v3, 0x1

    const-string v0, "GpuEffectController"

    const-string v1, "EffectDepth"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectCircle;->setCurrEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, v4}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    invoke-virtual {p0, v4}, Lcom/android/camera/GpuEffectController;->computeRadioCircle(I)V

    invoke-virtual {p0, v3}, Lcom/android/camera/GpuEffectController;->onCircleChange(Z)V

    return-void
.end method

.method private setEffectDistortion()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "GpuEffectController"

    const-string v1, "EffectDistortion"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectCircle;->setCurrEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/EffectCircle;->setCircleLineRadius(I)V

    return-void
.end method

.method private setEffectDots()V
    .locals 3

    const-string v0, "GpuEffectController"

    const-string v1, "EffectDots"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectCircle;->setCurrEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectCircle;->setCircleLineRadius(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectCircle;->invalidate()V

    return-void
.end method

.method private setEffectGreen()V
    .locals 3

    const-string v0, "GpuEffectController"

    const-string v1, "EffectGreen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_GREEN:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->hideEffectControl()V

    return-void
.end method

.method private setEffectHigh()V
    .locals 3

    const-string v0, "GpuEffectController"

    const-string v1, "EffectHigh"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_HIGH:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->hideEffectControl()V

    return-void
.end method

.method private setEffectPreference_DOT()V
    .locals 6

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_effect_manual"

    iget-object v5, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_service_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v1, v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private setEffectRed()V
    .locals 3

    const-string v0, "GpuEffectController"

    const-string v1, "EffectRed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VINTAGE_RED:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->hideEffectControl()V

    return-void
.end method

.method private setEffectSepia()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "GpuEffectController"

    const-string v1, "EffectSepia"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->SEPIA:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    const-string v3, "mono"

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->hideEffectControl()V

    return-void
.end method

.method private setEffectTilfShift()V
    .locals 3

    const-string v0, "GpuEffectController"

    const-string v1, "setEffectTilfShift"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectCircle;->setCurrEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    return-void
.end method

.method private setEffectVignette()V
    .locals 4

    const/16 v3, 0x46

    const-string v0, "GpuEffectController"

    const-string v1, "EffectVignette"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectCircle;->setCurrEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectControlBar;->getProgress()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    return-void
.end method

.method private setSceneValueBackup()V
    .locals 9

    const/4 v7, 0x1

    const/16 v5, 0x3a

    const/4 v4, 0x0

    const-string v8, "AutoScene.Enabled"

    const-string v6, "auto"

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene"

    const-string v3, "auto"

    invoke-static {v1, v2, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v5, v4, v4, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "AutoScene.Enabled"

    invoke-direct {v2, v8, v7}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->updateSceneIndicator(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_video_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_video_scene"

    const-string v3, "auto"

    invoke-static {v1, v2, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v5, v4, v4, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "AutoScene.Enabled"

    invoke-direct {v2, v8, v7}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->updateSceneIndicator(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setUpEffectByMode(I)V
    .locals 2

    const-string v1, "GpuEffectController"

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isCustomStore:Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    const-string v0, "GpuEffectController"

    const-string v0, " CAMERA_MODE"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->getPrefCameraEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GpuEffectController"

    const-string v0, " VIDEO_MODE"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->getPrefVideoEffectType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public computeRadioCircle(I)V
    .locals 9

    const-wide/high16 v7, 0x4044

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v3, v3

    const-wide v5, 0x400199999999999aL

    div-double/2addr v3, v5

    sub-double/2addr v3, v7

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    int-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v0, v3

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget v3, v3, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    add-int v1, v3, v0

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget v2, v3, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-le v1, v3, :cond_0

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    :cond_0
    int-to-double v3, v1

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_1

    const/16 v1, 0x28

    :cond_1
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iput v1, v3, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iput v2, v3, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget-object v4, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget v4, v4, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget-object v5, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget v5, v5, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget-object v4, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget v4, v4, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    iget-object v5, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget v5, v5, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iput v0, v3, Lcom/android/camera/widget/EffectCircle;->mR:I

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v3}, Lcom/android/camera/widget/EffectCircle;->invalidate()V

    return-void
.end method

.method public effectChangeMode(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "GpuEffectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectChangeMode mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v2, "CAMERA_MODE"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v3}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    invoke-direct {p0, p1}, Lcom/android/camera/GpuEffectController;->setUpEffectByMode(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/GpuEffectController;->resetAdapter(I)V

    return-void

    :cond_0
    const-string v2, "VIDEO_MODE"

    goto :goto_0
.end method

.method public effectSwitchCamera()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "none"

    const-string v3, "GpuEffectController"

    const-string v4, "effectSwitchCamera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->resetAdapter()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "none"

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    const-string v3, "none"

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    const-string v3, "none"

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    const-string v3, "none"

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_service_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v1, v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "none"

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    const-string v3, "none"

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v3, "none"

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    const-string v3, "none"

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getCircleCenter()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->hasEffectControl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectCircle;->getCenterPoint()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getCircleCoordinate()[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectCircle;->getCoordinateArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrEffect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectCircleListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    iget-object v0, v0, Lcom/android/camera/widget/EffectCircle;->myTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public handleTouchBehavior(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus()V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainBarLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainBarLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->isControlBarOnTouch()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->getEffectCircleListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/GpuEffectController;->onEffectBarTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public hasEffectControl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "depth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "distortion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "dots"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "tilfshift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "vignette"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideEffectControl()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/EffectCircle;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/EffectControlBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    goto :goto_0
.end method

.method public init(Landroid/view/ViewStub;Landroid/os/Handler;Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraController;)V
    .locals 6

    iput-object p2, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p4, p0, Lcom/android/camera/GpuEffectController;->mCamControl:Lcom/android/camera/CameraController;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/EffectCircle;

    iput-object v2, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    new-instance v2, Lcom/android/camera/widget/EffectControlBar;

    const v3, 0x7f080084

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/widget/EffectControlBar;-><init>(Landroid/view/View;Landroid/os/Handler;Lcom/android/camera/widget/EffectCircle;)V

    iput-object v2, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->barClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/GpuEffectController;->barClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v2}, Lcom/android/camera/widget/EffectCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v2, p0}, Lcom/android/camera/widget/EffectCircle;->setEffectCircleChangeListener(Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;)V

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v2, p0}, Lcom/android/camera/widget/EffectControlBar;->setControlBarChangeListener(Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/GpuEffectController;->cProp:Ljava/util/ArrayList;

    return-void
.end method

.method public isControlBarOnTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    iget-boolean v0, v0, Lcom/android/camera/widget/EffectControlBar;->isOnTouch:Z

    return v0
.end method

.method public isEffectBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAdapterChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCircleChange(Z)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordinate_array"

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v2}, Lcom/android/camera/widget/EffectCircle;->getCoordinateArray()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "is_moving"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x29

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCircleFingerUp(II)V
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    :cond_0
    return-void
.end method

.method public onControlBarChange(I)V
    .locals 4

    const/16 v3, 0x2a

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/GpuEffectController;->computeRadioCircle(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/GpuEffectController;->onCircleChange(Z)V

    goto :goto_0
.end method

.method public onEffectBarTouch(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/EffectControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onEffectCircleTouch(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0}, Lcom/android/camera/widget/EffectCircle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/EffectCircle;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public openEffectMenu(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/Panel;->setOpen(ZZ)Z

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "GpuEffectController"

    const-string v1, "----- pause  start-----"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->recoverCustomProp()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/GpuEffectController;->setISOPreference(Z)V

    return-void
.end method

.method public resetOldSceneValue()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->oldCameraSceneValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->oldCamcorderSceneValue:Ljava/lang/String;

    return-void
.end method

.method public resume(I)V
    .locals 2

    const-string v0, "GpuEffectController"

    const-string v1, "----- resume  start-----"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_iso"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mISOValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/GpuEffectController;->setUpEffectByMode(I)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->resetAdapter()V

    return-void
.end method

.method public setEffectMenuBar(Lcom/android/camera/widget/Panel;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/GpuEffectController;->getListOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mPanel:Lcom/android/camera/widget/Panel;

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    new-instance v0, Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/GpuEffectController$EffectAdapter;-><init>(Lcom/android/camera/GpuEffectController;)V

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->effect_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->effect_touch_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTrackBallFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectList:Landroid/widget/ListView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    :cond_0
    return-void
.end method

.method public setEffectNone()V
    .locals 8

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v7, "none"

    const-string v6, "GpuEffectController"

    const-string v0, "GpuEffectController"

    const-string v0, "EffectNone"

    invoke-static {v6, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    const-string v3, "none"

    invoke-virtual {v1, v2, v4, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x27()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isCustomStore:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->recoverCustomProp()V

    iput-boolean v4, p0, Lcom/android/camera/GpuEffectController;->isCustomStore:Z

    const-string v0, "GpuEffectController"

    const-string v0, "set recoverCustomProp()"

    invoke-static {v6, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0, v5}, Lcom/android/camera/widget/EffectCircle;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, v5}, Lcom/android/camera/widget/EffectControlBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    const-string v0, "none"

    iput-object v7, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    return-void
.end method

.method public setISOPreference(Z)V
    .locals 3

    const-string v2, "pref_camera_iso"

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_iso"

    const-string v1, "auto"

    invoke-static {v0, v2, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_iso"

    iget-object v1, p0, Lcom/android/camera/GpuEffectController;->mISOValue:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setISOString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/GpuEffectController;->mISOValue:Ljava/lang/String;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/GpuEffectController;->getListOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectAdapter:Lcom/android/camera/GpuEffectController$EffectAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/GpuEffectController$EffectAdapter;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method public setUpEffect(Ljava/lang/String;I)V
    .locals 8

    const/4 v6, 0x1

    const/16 v4, 0x13

    const/4 v3, 0x0

    const-string v7, "hdr"

    const-string v5, "none"

    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GpuEffectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Up Effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->exitPanoramaMode()V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "none"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->setEffectNone()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->restoreSceneValue()V

    :cond_3
    :goto_2
    if-nez p2, :cond_18

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_effect"

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "hdr"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const-string v2, "auto"

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/GpuEffectController;->setISOPreference(Z)V

    :goto_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectPreference_DOT()V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->exitHdrMode()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "burst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->exitBurstMode()V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-ne v0, v6, :cond_8

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setSceneValueBackup()V

    :cond_8
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[choose_effect]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectDepth()V

    :goto_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x27()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isCustomStore:Z

    if-nez v0, :cond_3

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->customProp()V

    iput-boolean v6, p0, Lcom/android/camera/GpuEffectController;->isCustomStore:Z

    const-string v0, "GpuEffectController"

    const-string v1, "Set customProp()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "distortion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectDistortion()V

    goto :goto_5

    :cond_b
    const-string v0, "vignette"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectVignette()V

    goto :goto_5

    :cond_c
    const-string v0, "vintage-green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectHigh()V

    goto :goto_5

    :cond_d
    const-string v0, "vintage-high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectGreen()V

    goto :goto_5

    :cond_e
    const-string v0, "vintage-red"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectRed()V

    goto :goto_5

    :cond_f
    const-string v0, "vintage-sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectSepia()V

    goto/16 :goto_5

    :cond_10
    const-string v0, "dots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectDots()V

    goto/16 :goto_5

    :cond_11
    const-string v0, "contrast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectContrast()V

    goto/16 :goto_5

    :cond_12
    const-string v0, "tilfshift"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "none"

    invoke-static {v0, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController;->setEffectTilfShift()V

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enterPanoramaMode()V

    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController;->hideEffectControl()V

    sget-object v0, Lcom/android/camera/GpuEffectController$GpuEffect;->NONE:Lcom/android/camera/GpuEffectController$GpuEffect;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    goto/16 :goto_5

    :cond_14
    const-string v0, "hdr"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enterHdrMode()V

    goto :goto_6

    :cond_15
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    const-string v1, "burst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enterBurstMode()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4, v3, v3, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mISOValue:Ljava/lang/String;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/GpuEffectController;->setISOPreference(Z)V

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_video_effect"

    iget-object v2, p0, Lcom/android/camera/GpuEffectController;->mCurrEffect:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public showEffectControl(Z)V
    .locals 5

    const/16 v4, 0x25

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DOTS:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v0, v1, :cond_0

    :cond_2
    const-string v0, "GpuEffectController"

    const-string v1, "showEffectControl"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->hideRemainingLayout()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectCircle:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/EffectCircle;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mEffectBar:Lcom/android/camera/widget/EffectControlBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/EffectControlBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->moreBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->lessBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/GpuEffectController;->isControlVisible:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/GpuEffectController;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f0a0129

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0
.end method
