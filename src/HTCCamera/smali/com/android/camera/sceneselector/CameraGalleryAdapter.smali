.class public Lcom/android/camera/sceneselector/CameraGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CameraGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;,
        Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final PRELOAD_SCENE_IMAGE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmapLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mContext:Landroid/content/Context;

.field private mFramedPos:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsClear:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLG:Landroid/graphics/LinearGradient;

.field private mMode:Landroid/graphics/Xfermode;

.field private mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

.field private mOrientation:I

.field private mRefelectHeight:I

.field private mRes:Landroid/content/res/Resources;

.field private mResolution:I

.field private mSceneImageList:[Landroid/graphics/Bitmap;

.field private mSceneReflectionList:[Landroid/graphics/Bitmap;

.field private mSceneResIdList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v3, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mResolution:I

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mOrientation:I

    iput-object v3, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mBitmapLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v4, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mIsClear:Z

    iput v4, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mFramedPos:I

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    iput p2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mResolution:I

    iput-object p4, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    iput p3, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mOrientation:I

    iput p5, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mFramedPos:I

    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->initConstants()V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CameraGalleryAdapter"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;-><init>(Lcom/android/camera/sceneselector/CameraGalleryAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mBitmapLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mIsClear:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRefelectHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/sceneselector/CameraGalleryAdapter;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->getReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 21

    const/16 v17, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mMode:Landroid/graphics/Xfermode;

    move-object v5, v0

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mMode:Landroid/graphics/Xfermode;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mLG:Landroid/graphics/LinearGradient;

    move-object v5, v0

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    const/4 v8, 0x0

    sub-int v9, v16, p2

    int-to-float v9, v9

    const/high16 v10, 0x7f00

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mLG:Landroid/graphics/LinearGradient;

    :cond_1
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v5, 0xff

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int v5, v16, p2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v19, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v18, Landroid/graphics/ComposeShader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mLG:Landroid/graphics/LinearGradient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mMode:Landroid/graphics/Xfermode;

    move-object v6, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v14, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move v8, v0

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/16 v5, 0x40

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v14, v5, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v5, 0x0

    move-object v0, v13

    move v1, v5

    move/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v17
.end method

.method private initConstants()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mItemWidth:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mItemHeight:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRefelectHeight:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mNonUiHandler:Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mBitmapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mIsClear:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mBitmapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mBitmapLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030040

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;-><init>(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)V

    const v7, 0x7f08016e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->original:Landroid/widget/ImageView;

    const v7, 0x7f08016f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->reflection:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/TouchDelegate;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mItemWidth:I

    iget v9, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mItemHeight:I

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->original:Landroid/widget/ImageView;

    invoke-direct {v1, v7, v8}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->reflection:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v5, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneResIdList:[I

    move v0, p1

    if-ltz v0, :cond_5

    array-length v7, v5

    if-ge v0, v7, :cond_5

    array-length v7, v5

    if-lez v7, :cond_5

    aget v4, v5, v0

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v0

    if-nez v7, :cond_1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    invoke-static {v7, v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    aput-object v6, v7, v0

    :goto_1
    iget-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->original:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRes:Landroid/content/res/Resources;

    invoke-direct {v8, v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mFramedPos:I

    if-ne v7, p1, :cond_2

    iget-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->original:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0a001e

    const v10, 0x7f020131

    invoke-static {v8, v9, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v0

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mRefelectHeight:I

    invoke-direct {p0, v6, v8}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->getReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v7, v0

    :goto_3
    iget-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->reflection:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_4
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneImageList:[Landroid/graphics/Bitmap;

    aget-object v6, v7, v0

    goto :goto_1

    :cond_2
    iget-object v7, v2, Lcom/android/camera/sceneselector/CameraGalleryAdapter$ViewHolder;->original:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->mSceneReflectionList:[Landroid/graphics/Bitmap;

    aget-object v6, v7, v0

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getview, mRes is null, curScenePos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    sget-object v7, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getview, fail to set image view, curScenePos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
