.class public Lcom/android/camera/sceneselector/SceneMainGallery;
.super Lcom/android/camera/sceneselector/CameraGallery;
.source "SceneMainGallery.java"


# static fields
.field private static final DETACH_OFFSCREEN_OFFSET:I = 0x0

.field private static final ENABLE_DEBUG:Z = false

.field public static final HVGA:I = 0x0

.field public static final QVGA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SceneMainGallery"

.field public static final WQVGA:I = 0x3

.field public static final WVGA:I = 0x2


# instance fields
.field private mBaseLine0:I

.field private mBaseLine1:I

.field private mBaseLine2:I

.field private mBaseLine3:I

.field private mBaseLine4:I

.field private mCamera:Landroid/graphics/Camera;

.field private mChildCount:I

.field private mCounter:J

.field private mCurrentTime:J

.field private mFPSBackgroundRect:Landroid/graphics/Rect;

.field private mFPSRectPaint:Landroid/graphics/Paint;

.field private mFPSTextPaint:Landroid/graphics/Paint;

.field private mFPSTextRect:Landroid/graphics/Rect;

.field protected mFocusPaint:Landroid/graphics/Paint;

.field private mFps:J

.field private mGalleryWidth:I

.field private mItemWidth:I

.field private mItemWidth_H:F

.field private mLastTime:J

.field private mLoc:[I

.field private mOrientation:I

.field private mRes:Landroid/content/res/Resources;

.field private mResolution:I

.field private mRotateMtx:Landroid/graphics/Matrix;

.field private mScaleMtx:Landroid/graphics/Matrix;

.field private mTranslateMtx:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/sceneselector/SceneMainGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/sceneselector/SceneMainGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/sceneselector/CameraGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mRes:Landroid/content/res/Resources;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mChildCount:I

    iput-wide v4, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mCurrentTime:J

    iput-wide v4, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mLastTime:J

    iput-wide v6, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mCounter:J

    iput-wide v6, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mFps:J

    iput-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mFPSTextPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mFPSRectPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mFPSTextRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mFPSBackgroundRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mCamera:Landroid/graphics/Camera;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mLoc:[I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mScaleMtx:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mTranslateMtx:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mRotateMtx:Landroid/graphics/Matrix;

    iput v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mGalleryWidth:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine0:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine2:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine3:I

    iput v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine4:I

    iput v3, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mResolution:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mRes:Landroid/content/res/Resources;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneMainGallery;->setStaticTransformationsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->init()V

    return-void
.end method

.method public static BoxStep(FFF)F
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v0, 0x0

    cmpg-float v1, p2, p1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    sub-float v1, p1, p0

    sub-float v2, p1, p2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v4}, Lcom/android/camera/sceneselector/SceneMainGallery;->Clamp(FFF)F

    move-result v1

    :goto_0
    return v1

    :cond_1
    sub-float v1, p0, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    invoke-static {v1, v3, v4}, Lcom/android/camera/sceneselector/SceneMainGallery;->Clamp(FFF)F

    move-result v1

    goto :goto_0
.end method

.method public static Clamp(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static Swap(FF)V
    .locals 1

    move v0, p0

    move p0, p1

    move p1, v0

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/sceneselector/SceneMainGallery;->setDetachOffScreenOffset(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/SceneMainGallery;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/sceneselector/SceneMainGallery;->setSpacing(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "SceneMainGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "borranx : widthPixels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " heightPixels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mResolution:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth:I

    iget v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth_H:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isChildInsidePosition(ILandroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    if-ltz p1, :cond_1

    iget v3, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mChildCount:I

    sub-int/2addr v3, v6

    if-le p1, v3, :cond_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mLoc:[I

    aget v3, v3, v5

    iget v4, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth_H:F

    float-to-int v4, v4

    add-int v0, v3, v4

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    if-ge v0, v1, :cond_5

    move v3, v6

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine2:I

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine2:I

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    if-lt v0, v2, :cond_5

    move v3, v6

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    if-lt v0, v2, :cond_5

    if-ge v0, v1, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scrollToNextItem(ZI)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCenterOfGallery()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, p2, :cond_1

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->checkSelectionChangedFling()V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_0

    if-gez v0, :cond_0

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkSelectionChangedFling()V
    .locals 4

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOldSelectedPosition:I

    iget-wide v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOldSelectedRowId:J

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mRecycler:Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "borranx before clear child count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->removeAllViewsInLayout()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "borranx after clear child count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/sceneselector/CameraGallery;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 5

    const/4 v4, 0x1

    if-gt p1, v4, :cond_0

    move v4, p2

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mChildCount:I

    if-ge v1, v4, :cond_5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/SceneMainGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/camera/sceneselector/SceneMainGallery;->isChildInsidePosition(ILandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v4, p2, 0x1

    if-ne v3, v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v4, p2

    goto :goto_0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLimitedMotionScrollAmount(ZI)I
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    :goto_0
    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/SceneMainGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v5, p2

    :goto_1
    return v5

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCenterOfGallery()I

    move-result v4

    sub-int v0, v4, v2

    if-eqz p1, :cond_4

    if-gt v2, v4, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    if-le v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    iget v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    neg-int v5, v5

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_1

    :cond_4
    if-lt v2, v4, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    if-le v5, v6, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    if-lez p2, :cond_6

    iget v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    goto :goto_1

    :cond_6
    move v5, v7

    goto :goto_1

    :cond_7
    move v5, p2

    goto :goto_1
.end method

.method public getResolution()I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mResolution:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, -0x190

    const/4 v2, 0x0

    const/16 v3, 0x550

    const/16 v4, 0x320

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const-string v2, "SceneMainGallery"

    invoke-super/range {p0 .. p5}, Lcom/android/camera/sceneselector/CameraGallery;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mGalleryWidth:I

    add-int v0, p2, p4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth_H:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    iget v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine0:I

    iget v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mItemWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine2:I

    const-string v0, "SceneMainGallery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout, mBaseLine2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SceneMainGallery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout, mBaseLine1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SceneMainGallery"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout, mBaseLine0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/sceneselector/SceneMainGallery;->mBaseLine0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    :cond_0
    :goto_0
    const/high16 v0, 0x4248

    cmpg-float v0, v0, p3

    if-ltz v0, :cond_1

    const/high16 v0, -0x3db8

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    :cond_1
    const/high16 v0, 0x4000

    div-float/2addr p3, v0

    :cond_2
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/SceneMainGallery;->trackMotionScroll(I)V

    iput-boolean v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIsFirstScroll:Z

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method onUp(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownEventX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/camera/sceneselector/SceneMainGallery;->scrollToNextItem(ZI)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->onUp(Landroid/view/MotionEvent;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected setSelectionToCenterChild()V
    .locals 10

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    iget-object v8, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getCenterOfGallery()I

    move-result v3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    :cond_2
    const v2, 0x7fffffff

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera/sceneselector/SceneMainGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    move v6, v4

    :cond_3
    iget v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    iget v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/SceneMainGallery;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/SceneMainGallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/SceneMainGallery;->checkSelectionChangedFling()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_5

    move v2, v1

    move v6, v4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method
