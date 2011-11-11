.class public Lcom/android/camera/sceneselector/SceneSelectorActivity;
.super Landroid/app/Activity;
.source "SceneSelectorActivity.java"

# interfaces
.implements Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;


# static fields
.field public static final INTENT_MESSAGE_DEFAULT_POSITION:Ljava/lang/String; = "default_position"

.field public static final INTENT_MESSAGE_SCENE_SELECTOR_MODE:Ljava/lang/String; = "scene_selector_mode"

.field public static final INTENT_MESSAGE_SELECTED_POSITION:Ljava/lang/String; = "selected_position"

.field private static final SCENEDESCRIPTIONLIST:[I = null

.field private static final SCENEICONLIST:[I = null

.field private static final SCENERESIDARRAY:[I = null

.field private static final SCENETYPESTRINGLIST:[I = null

.field public static final SCENE_SELECTOR_MODE_NORMAL:I = 0x0

.field public static final SCENE_SELECTOR_MODE_SERVICE:I = 0x1

.field public static final SELECTED_SCENE:Ljava/lang/String; = "selected_scene"

.field private static final SERVICE_SCENEDESCRIPTIONLIST:[I

.field private static final SERVICE_SCENEICONLIST:[I

.field private static final SERVICE_SCENERESIDARRAY:[I

.field private static final SERVICE_SCENETYPESTRINGLIST:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

.field private mCenterButton:Landroid/widget/Button;

.field private mCenterListener:Landroid/view/View$OnClickListener;

.field private mFramedPos:I

.field private mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mResolution:I

.field private mSceneDescription:Landroid/widget/TextView;

.field private mSceneIcon:Landroid/widget/ImageView;

.field private mSceneSelectorMode:I

.field private mSceneSelectorTitle:Landroid/widget/TextView;

.field private mSceneType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x7

    const-class v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENERESIDARRAY:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENEICONLIST:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENETYPESTRINGLIST:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENEDESCRIPTIONLIST:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENERESIDARRAY:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENEICONLIST:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENETYPESTRINGLIST:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENEDESCRIPTIONLIST:[I

    return-void

    :array_0
    .array-data 0x4
        0x2ft 0x1t 0x2t 0x7ft
        0x32t 0x1t 0x2t 0x7ft
        0x43t 0x1t 0x2t 0x7ft
        0x33t 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
        0x41t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x35t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x79t 0x1t 0xat 0x7ft
        0x82t 0x1t 0xat 0x7ft
        0x7at 0x1t 0xat 0x7ft
        0x7bt 0x1t 0xat 0x7ft
        0x7ct 0x1t 0xat 0x7ft
        0x7dt 0x1t 0xat 0x7ft
        0x7et 0x1t 0xat 0x7ft
        0x7ft 0x1t 0xat 0x7ft
        0x80t 0x1t 0xat 0x7ft
        0x83t 0x1t 0xat 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x84t 0x1t 0xat 0x7ft
        0x8ct 0x1t 0xat 0x7ft
        0x85t 0x1t 0xat 0x7ft
        0x86t 0x1t 0xat 0x7ft
        0x87t 0x1t 0xat 0x7ft
        0x88t 0x1t 0xat 0x7ft
        0x89t 0x1t 0xat 0x7ft
        0x8at 0x1t 0xat 0x7ft
        0x8bt 0x1t 0xat 0x7ft
        0x8et 0x1t 0xat 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x2ft 0x1t 0x2t 0x7ft
        0x33t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
        0x41t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x35t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x79t 0x1t 0xat 0x7ft
        0x7bt 0x1t 0xat 0x7ft
        0x7dt 0x1t 0xat 0x7ft
        0x7et 0x1t 0xat 0x7ft
        0x7ft 0x1t 0xat 0x7ft
        0x80t 0x1t 0xat 0x7ft
        0x83t 0x1t 0xat 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x84t 0x1t 0xat 0x7ft
        0x86t 0x1t 0xat 0x7ft
        0x88t 0x1t 0xat 0x7ft
        0x89t 0x1t 0xat 0x7ft
        0x8at 0x1t 0xat 0x7ft
        0x8bt 0x1t 0xat 0x7ft
        0x8et 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mResolution:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mOrientation:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorMode:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mFramedPos:I

    new-instance v0, Lcom/android/camera/sceneselector/SceneSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity$1;-><init>(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/camera/sceneselector/SceneSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity$2;-><init>(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mNextListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/camera/sceneselector/SceneSelectorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity$3;-><init>(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mCenterListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/sceneselector/SceneSelectorActivity;)Lcom/android/camera/sceneselector/SceneMainGallery;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->selectScene()V

    return-void
.end method

.method private initControls(Landroid/os/Bundle;)V
    .locals 11

    const/16 v3, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v4, "default_position"

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/sceneselector/SceneMainGallery;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, v9}, Lcom/android/camera/sceneselector/SceneMainGallery;->setCallbackDuringFling(Z)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setFlingFactor(F)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    const/high16 v1, 0x43c8

    const/high16 v2, 0x44e1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/sceneselector/SceneMainGallery;->setFlingMinMax(FF)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setBouncingLimit(I)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, v10}, Lcom/android/camera/sceneselector/SceneMainGallery;->setSpacing(I)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setDetachOffScreenOffset(I)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, v9}, Lcom/android/camera/sceneselector/SceneMainGallery;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->setOnFinishedMovementListener(Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getResolution()I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mResolution:I

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SceneGallery resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setAnimationDuration(I)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, v3}, Lcom/android/camera/sceneselector/SceneMainGallery;->setIntoSlotDuration(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "scene_selector_mode"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorMode:I

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initControls from intent, mSceneSelectorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    if-eqz p1, :cond_4

    const-string v0, "selected_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "default_position"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mFramedPos:I

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initControls from saveInstanceState, defaultPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENERESIDARRAY:[I

    array-length v7, v0

    iget v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorMode:I

    if-ne v0, v10, :cond_5

    new-instance v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    iget v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mResolution:I

    iget v3, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mOrientation:I

    sget-object v4, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENERESIDARRAY:[I

    iget v5, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mFramedPos:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;-><init>(Landroid/content/Context;II[II)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENERESIDARRAY:[I

    array-length v7, v0

    :goto_2
    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    new-instance v1, Lcom/android/camera/sceneselector/SceneSelectorActivity$4;

    invoke-direct {v1, p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity$4;-><init>(Lcom/android/camera/sceneselector/SceneSelectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setOnItemClickListener(Lcom/android/camera/sceneselector/AdapterView$OnItemClickListener;)V

    if-ltz v8, :cond_6

    if-ge v8, v7, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, v8, v9, v9}, Lcom/android/camera/sceneselector/SceneMainGallery;->setSelection(IZZ)V

    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorTitle:Landroid/widget/TextView;

    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneIcon:Landroid/widget/ImageView;

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneType:Landroid/widget/TextView;

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneDescription:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorMode:I

    if-ne v0, v10, :cond_7

    invoke-direct {p0, v8}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->setServiceModeSceneInfo(I)V

    :goto_4
    const v0, 0x2020006

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mPrevButton:Landroid/widget/ImageButton;

    const v1, 0x20803f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x2020007

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mNextButton:Landroid/widget/ImageButton;

    const v1, 0x208035b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x2020001

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mCenterButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mCenterButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mCenterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mCenterButton:Landroid/widget/Button;

    const v1, 0x7f0a0178

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0, v3}, Lcom/android/camera/sceneselector/SceneMainGallery;->setAnimationDuration(I)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setIntoSlotDuration(I)V

    goto/16 :goto_0

    :cond_4
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "default_position"

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mFramedPos:I

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initControls from intent, defaultPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    iget v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mResolution:I

    iget v3, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mOrientation:I

    sget-object v4, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENERESIDARRAY:[I

    iget v5, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mFramedPos:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;-><init>(Landroid/content/Context;II[II)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    goto/16 :goto_2

    :cond_6
    move v8, v9

    goto/16 :goto_3

    :cond_7
    invoke-direct {p0, v8}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->setSceneInfo(I)V

    goto/16 :goto_4
.end method

.method private selectScene()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "selected_scene"

    iget-object v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v2}, Lcom/android/camera/sceneselector/SceneMainGallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->finish()V

    return-void
.end method

.method private setSceneInfo(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v4}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENEICONLIST:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneType:Landroid/widget/TextView;

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENETYPESTRINGLIST:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneDescription:Landroid/widget/TextView;

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SCENEDESCRIPTIONLIST:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setServiceModeSceneInfo(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v4}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENEICONLIST:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneType:Landroid/widget/TextView;

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENETYPESTRINGLIST:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneDescription:Landroid/widget/TextView;

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->SERVICE_SCENEDESCRIPTIONLIST:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate()+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(), savedInstanceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->requestWindowFeature(I)Z

    const v2, 0x7f03003f

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->initControls(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate()-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mAdapter:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    :cond_0
    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinishedMovement()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->getSelectedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mSceneSelectorMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->setServiceModeSceneInfo(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/SceneSelectorActivity;->setSceneInfo(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v2, "onFinishedMovement, mGallery is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    if-eqz v0, :cond_0

    const-string v0, "selected_position"

    iget-object v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mGallery:Lcom/android/camera/sceneselector/SceneMainGallery;

    invoke-virtual {v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "default_position"

    iget v1, p0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->mFramedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/camera/sceneselector/SceneSelectorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
