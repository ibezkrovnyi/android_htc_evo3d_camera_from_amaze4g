.class public Lcom/android/camera/widget/EffectCircle;
.super Landroid/view/View;
.source "EffectCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;
    }
.end annotation


# static fields
.field public static final ALPHA_OFF:I = 0xa

.field public static final ALPHA_ON:I = 0x64

.field public static final KEY_COORDINATE_ARRAY:Ljava/lang/String; = "coordinate_array"

.field public static final KEY_IS_MOVING:Ljava/lang/String; = "is_moving"

.field public static final MIN_RADIUS:D = 40.0

.field private static final MODE_CHANGE_RADIUS:I = 0x1

.field private static final MODE_MOVE_CIRCLE:I


# instance fields
.field private final RADIUS_TOUCH_SLOP:I

.field private TAG:Ljava/lang/String;

.field public dRadius:D

.field private mCenter:[I

.field private mCoordinateValue:[I

.field public mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

.field private mListener:Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

.field private mPaintCircle:Landroid/graphics/Paint;

.field private mPaintLine:Landroid/graphics/Paint;

.field public mR:I

.field public mX:I

.field public mY:I

.field public myTouchListener:Landroid/view/View$OnTouchListener;

.field public nCenterX:I

.field public nCenterY:I

.field public nDistX:I

.field public nDistY:I

.field private nMode:I

.field public nOtherX:I

.field public nOtherY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "EffectCircle"

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/camera/widget/EffectCircle;->nMode:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->RADIUS_TOUCH_SLOP:I

    iput-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCenter:[I

    iput-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mListener:Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    new-instance v0, Lcom/android/camera/widget/EffectCircle$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/EffectCircle$1;-><init>(Lcom/android/camera/widget/EffectCircle;)V

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->myTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "EffectCircle"

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/camera/widget/EffectCircle;->nMode:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->RADIUS_TOUCH_SLOP:I

    iput-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCenter:[I

    iput-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mListener:Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    new-instance v0, Lcom/android/camera/widget/EffectCircle$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/EffectCircle$1;-><init>(Lcom/android/camera/widget/EffectCircle;)V

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->myTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/android/camera/widget/EffectCircle;->setPaintON()V

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/EffectCircle;->dRadius:D

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->mX:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->mY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "EffectCircle"

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/camera/widget/EffectCircle;->nMode:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->RADIUS_TOUCH_SLOP:I

    iput-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCenter:[I

    iput-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mListener:Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    new-instance v0, Lcom/android/camera/widget/EffectCircle$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/EffectCircle$1;-><init>(Lcom/android/camera/widget/EffectCircle;)V

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->myTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/EffectCircle;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/EffectCircle;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/EffectCircle;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/EffectCircle;->nMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/widget/EffectCircle;IIII)D
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/widget/EffectCircle;->dist(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mListener:Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    return-object v0
.end method

.method private circleReset()V
    .locals 3

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/widget/EffectCircle;->dRadius:D

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->mX:I

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->mY:I

    return-void
.end method

.method private dist(IIII)D
    .locals 5

    sub-int v2, p3, p1

    sub-int v3, p3, p1

    mul-int/2addr v2, v3

    sub-int v3, p4, p2

    sub-int v4, p4, p2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCenterPoint()[I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCenter:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCenter:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCenter:[I

    return-object v0
.end method

.method public getCoordinateArray()[I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v1, v0, v2

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    sub-int/2addr v1, v2

    aput v1, v0, v3

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    aput v1, v0, v4

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    sub-int/2addr v1, v2

    aput v1, v0, v5

    iput-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    sub-int/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    iget v1, p0, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    sub-int/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCoordinateValue:[I

    goto :goto_0
.end method

.method public getCoordinateValue()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    aput v2, v0, v1

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->mX:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->mY:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->mX:I

    int-to-float v0, v0

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->mY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->mR:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v1, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/widget/EffectCircle;->mX:I

    int-to-float v0, v0

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v2, p0, Lcom/android/camera/widget/EffectCircle;->mY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4220

    iget-object v3, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCircleLineRadius(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/widget/EffectCircle;->mR:I

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/android/camera/widget/EffectCircle;->dRadius:D

    return-void
.end method

.method public setCoordinateValue([I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    return-void
.end method

.method public setCurrEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    invoke-direct {p0}, Lcom/android/camera/widget/EffectCircle;->circleReset()V

    return-void
.end method

.method public setCurrentEffect(Lcom/android/camera/GpuEffectController$GpuEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    return-void
.end method

.method public setEffectCircleChangeListener(Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/EffectCircle;->mListener:Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    return-void
.end method

.method public setPaintOFF()V
    .locals 3

    const/16 v2, 0xa

    const/16 v1, 0xe6

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_1
    return-void
.end method

.method public setPaintON()V
    .locals 3

    const/16 v2, 0x64

    const/16 v1, 0xe6

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/EffectCircle;->mPaintLine:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_1
    return-void
.end method
