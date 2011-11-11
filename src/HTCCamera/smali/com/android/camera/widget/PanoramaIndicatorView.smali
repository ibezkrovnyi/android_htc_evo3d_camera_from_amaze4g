.class public Lcom/android/camera/widget/PanoramaIndicatorView;
.super Landroid/view/View;
.source "PanoramaIndicatorView.java"


# static fields
.field private static final DATA_UPDATE_INTERVAL:I = 0x14

#the value of this static final field might be set in the static constructor
.field private static final DEVICE_ORIENTATION_LANDSCAPE:I = 0x0

.field private static final FRAME_INDICATOR_RADIUS:I = 0x16

.field private static final MSG_UPDATE_FRAME_OFFSET:I = 0x2

.field private static final MSG_UPDATE_ORIENTATION:I = 0x1

.field public static final UI_UPDATE_TYPE_NORMAL:I = 0x0

.field public static final UI_UPDATE_TYPE_SMOOTH:I = 0x1


# instance fields
.field private final m_ActiveFrameIndicatorPaint:Landroid/graphics/Paint;

.field private m_CurrentDeltaX:F

.field private m_CurrentOrientation:D

.field private m_DeltaX:F

.field private m_DeviceOrientation:I

.field private final m_FrameIndicatorPaint:Landroid/graphics/Paint;

.field private m_FrameIndicatorUpdateType:I

.field private final m_Handler:Landroid/os/Handler;

.field private final m_HorizontalLinePen:Landroid/graphics/Paint;

.field private m_IsFrameIndicatorActive:Z

.field private m_LastDeviceOrientationUpdateTime:J

.field private m_PanoramaDirection:I

.field private m_ShowFrameIndicator:Z

.field private m_SpinnerRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v0

    sput v0, Lcom/android/camera/widget/PanoramaIndicatorView;->DEVICE_ORIENTATION_LANDSCAPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0xff

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    const/16 v0, 0x26

    iput v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    new-instance v0, Lcom/android/camera/widget/PanoramaIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/PanoramaIndicatorView$1;-><init>(Lcom/android/camera/widget/PanoramaIndicatorView;)V

    iput-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ActiveFrameIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ActiveFrameIndicatorPaint:Landroid/graphics/Paint;

    const/16 v1, 0x85

    const/16 v2, 0xb3

    const/16 v3, 0x31

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ActiveFrameIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateOrientation()V

    return-void
.end method

.method private updateFrameOffset()V
    .locals 7

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iget v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    sub-float/2addr v2, v3

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iput v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    const-wide/high16 v3, 0x4000

    div-double v3, v0, v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateOrientation()V
    .locals 9

    const/4 v8, 0x1

    const-wide v6, 0x4076800000000000L

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    sub-double v0, v2, v4

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    sub-double/2addr v0, v6

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fd3333333333333L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    :goto_1
    return-void

    :cond_1
    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v6

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    const-wide/high16 v4, 0x4000

    div-double v4, v0, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v31

    sget v5, Lcom/android/camera/widget/PanoramaIndicatorView;->DEVICE_ORIENTATION_LANDSCAPE:I

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    move-wide v7, v0

    sub-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L

    add-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L

    rem-double v25, v5, v7

    const-wide v5, 0x4066800000000000L

    div-double v5, v25, v5

    const-wide v7, 0x400921fb54442d18L

    mul-double v21, v5, v7

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide v5, 0x4056800000000000L

    cmpl-double v5, v25, v5

    if-eqz v5, :cond_1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    move-wide/from16 v19, v5

    :goto_0
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v23

    const-wide v5, 0x4056800000000000L

    sub-double v5, v25, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fb999999999999aL

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    cmpg-double v5, v21, v23

    if-gtz v5, :cond_2

    const/16 v27, 0x0

    div-int/lit8 v5, v31, 0x2

    int-to-double v5, v5

    div-int/lit8 v7, v32, 0x2

    int-to-double v7, v7

    mul-double v7, v7, v19

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v13, v32

    sub-int v15, v31, v29

    :goto_1
    div-int/lit8 v5, v32, 0x2

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move v7, v0

    int-to-double v7, v7

    mul-double/2addr v7, v11

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v28, v0

    div-int/lit8 v5, v31, 0x2

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move v7, v0

    int-to-double v7, v7

    mul-double v7, v7, v17

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v30, v0

    div-int/lit8 v5, v32, 0x2

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move v7, v0

    int-to-double v7, v7

    mul-double/2addr v7, v11

    add-double/2addr v5, v7

    double-to-int v14, v5

    div-int/lit8 v5, v31, 0x2

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move v7, v0

    int-to-double v7, v7

    mul-double v7, v7, v17

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v28

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v6, v14

    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v13

    int-to-float v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    move v5, v0

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    move v6, v0

    sub-float/2addr v5, v6

    div-int/lit8 v6, v32, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move v5, v0

    div-int/lit8 v6, v31, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x41b0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    move v8, v0

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ActiveFrameIndicatorPaint:Landroid/graphics/Paint;

    move-object v8, v0

    :goto_3
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    const/high16 v5, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    move v6, v0

    sub-float/2addr v5, v6

    div-int/lit8 v6, v32, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v33, v0

    :goto_4
    move/from16 v0, v33

    int-to-float v0, v0

    move v5, v0

    div-int/lit8 v6, v31, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x41b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    const-wide/high16 v5, 0x7ff0

    move-wide/from16 v19, v5

    goto/16 :goto_0

    :cond_2
    const-wide v5, 0x400921fb54442d18L

    sub-double v5, v5, v23

    cmpg-double v5, v21, v5

    if-gtz v5, :cond_3

    div-int/lit8 v5, v32, 0x2

    int-to-double v5, v5

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide v7, v0

    const-wide/high16 v9, 0x4000

    mul-double v9, v9, v19

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v27, v0

    const/16 v29, 0x0

    sub-int v13, v32, v27

    move/from16 v15, v31

    goto/16 :goto_1

    :cond_3
    move/from16 v27, v32

    div-int/lit8 v5, v31, 0x2

    int-to-double v5, v5

    div-int/lit8 v7, v32, 0x2

    int-to-double v7, v7

    mul-double v7, v7, v19

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v29, v0

    const/4 v13, 0x0

    sub-int v15, v31, v29

    goto/16 :goto_1

    :cond_4
    div-int/lit8 v27, v32, 0x2

    const/16 v29, 0x0

    move/from16 v28, v27

    div-int/lit8 v5, v31, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move v6, v0

    sub-int v30, v5, v6

    move/from16 v13, v27

    move/from16 v15, v31

    move v14, v13

    div-int/lit8 v5, v31, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move v6, v0

    add-int v16, v5, v6

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorPaint:Landroid/graphics/Paint;

    move-object v8, v0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    move v5, v0

    neg-float v5, v5

    div-int/lit8 v6, v32, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v33, v0

    goto/16 :goto_4
.end method

.method public final setDeviceOrientation(I)V
    .locals 8

    const/4 v7, 0x1

    iget-wide v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    rem-int/lit8 v0, p1, 0x5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v7, :cond_1

    iget-wide v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateOrientation()V

    goto :goto_0
.end method

.method public final setFrameIndicatorActivity(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFrameIndicatorUpdateType(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    :cond_0
    return-void
.end method

.method public final setFrameIndicatorVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFrameOffset(FF)V
    .locals 2

    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    goto :goto_0
.end method

.method public final setPanoramaDirection(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    :cond_0
    return-void
.end method
