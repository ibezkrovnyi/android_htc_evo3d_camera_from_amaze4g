.class public Lcom/scalado/app/rewind/AutoSession;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;,
        Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;,
        Lcom/scalado/app/rewind/AutoSession$Command;,
        Lcom/scalado/app/rewind/AutoSession$LooperThread;,
        Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;,
        Lcom/scalado/app/rewind/AutoSession$Replacement;,
        Lcom/scalado/app/rewind/AutoSession$ToUiHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I = null

.field private static final ABSOLUTE_MIN_FEATHERING:I = 0x2

.field private static final MSG_ADD_JPEG:I = 0x1

.field private static final MSG_ALL_IMAGES_ADDED:I = 0x81

.field private static final MSG_ERROR:I = 0x100

.field private static final MSG_GET_MERGED_IMG:I = 0x3

.field private static final MSG_GET_SOURCE_IMG:I = 0x4

.field private static final MSG_LTW_COMPLETED:I = 0x80

.field private static final MSG_OUTPUT_JPEG:I = 0x2

.field private static final MSG_OUTPUT_SOURCE_JPEG:I = 0x10

.field private static final MSG_QUIT:I = 0x20

.field private static final MSG_RECTS:I = 0xa0

.field private static final MSG_RECYCLE:I = 0x8

.field private static final MSG_SAVE_COMPLETED:I = 0x8c

.field private static final REF_MIN_FEATHERING:I = 0x8

.field private static final REF_MIN_FEATHERING_DIM_LENGTH:I = 0xcc0

.field private static final REF_MIN_MAX_TRANSLATION:I = 0x3c

.field private static final REF_MIN_MAX_TRANSLATION_DIM_LENGTH:I = 0xcc0

.field private static final TAG:Ljava/lang/String; = "AutoSession"

.field private static maxRelativeTranslation:F

.field private static sLogging:Z


# instance fields
.field private mAbortRequested:Z

.field private mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

.field private mBestBgIndex:I

.field private mDecoders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/caps/codec/decoder/JpegDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mDryMode:Z

.field private mFaceDetection2W:I

.field private mFaceDetectionBaseW:I

.field private mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetectionDims2:Lcom/scalado/base/Size;

.field private mFirstTime:Z

.field private mImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mImgs2:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

.field private mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

.field private mLtwCompleted:Z

.field private mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

.field private mMaxJpegSize:I

.field private mMaxMaxTranslation:I

.field private mMergedImg:Lcom/scalado/base/Image;

.field private mMergedJpeg:Lcom/scalado/base/Buffer;

.field private mMinFeathering:I

.field private mMinMaxTranslation:I

.field private mNotReplaced:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mNumImages:I

.field private mNumReceived:I

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mRelMaxTranslation:F

.field private mReplacements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$Replacement;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mScreenImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/scalado/caps/Session;

.field private mSrcDims:Lcom/scalado/base/Size;

.field private mT0:J

.field private mT0All:J

.field private mT1:J

.field private mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

.field private mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

.field private mUseImage2:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I
    .locals 3

    sget-object v0, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/app/rewind/AutoSession$Command;->values()[Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->ABORT:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->CONTINUE:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/app/rewind/AutoSession$Command;->SKIP_THIS:Lcom/scalado/app/rewind/AutoSession$Command;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    const v0, 0x3f333333

    sput v0, Lcom/scalado/app/rewind/AutoSession;->maxRelativeTranslation:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    iput v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/AutoSession$LooperThread;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$LooperThread;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$ToUiHandler;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mDryMode:Z

    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/AutoSession;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/AutoSession;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateAddJpeg(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/AutoSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateGetMergedImage()V

    return-void
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/AutoSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->privateGetSourceImage(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->privateRecycle()V

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/AutoSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/AutoSession;->doSaveSourceJpeg(ILjava/lang/String;)V

    return-void
.end method

.method private boundDim(III)I
    .locals 2

    add-int v1, p1, p2

    if-le v1, p3, :cond_0

    add-int v1, p1, p2

    sub-int v0, v1, p3

    sub-int/2addr p2, v0

    const/4 v1, -0x1

    invoke-direct {p0, p2, v1}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method private convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12

    const/high16 v11, 0x3f00

    iget-object v9, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v9}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v4, v9, v10

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v2, v9, v10

    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float v10, v11, v4

    add-float v0, v9, v10

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float v10, v11, v2

    add-float v1, v9, v10

    mul-float v9, v11, v4

    sub-float v9, v0, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-float v9, v11, v2

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-float v9, v11, v4

    add-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-float v9, v11, v2

    add-float/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v9
.end method

.method private correctOrientation(Lcom/scalado/stream/BufferStream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 6

    new-instance v2, Lcom/scalado/caps/exif/Session;

    invoke-direct {v2, p1}, Lcom/scalado/caps/exif/Session;-><init>(Lcom/scalado/stream/Stream;)V

    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    move-object v1, v5

    const-string v5, "Rotating image "

    invoke-static {v5}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private createLtw()V
    .locals 3

    new-instance v1, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-direct {v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/Decoder;

    invoke-virtual {v2, v1}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->addSource(Lcom/scalado/caps/Decoder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createReplaceRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v3

    invoke-direct {p0, v4, v6}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v4

    invoke-direct {p0, v2, v8}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v2

    invoke-direct {p0, v0, v8}, Lcom/scalado/app/rewind/AutoSession;->ensureTwoMult(II)I

    move-result v0

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Lcom/scalado/app/rewind/AutoSession;->boundDim(III)I

    move-result v2

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Lcom/scalado/app/rewind/AutoSession;->boundDim(III)I

    move-result v0

    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    invoke-virtual {v1, v3}, Lcom/scalado/base/Rect;->setX(I)V

    invoke-virtual {v1, v4}, Lcom/scalado/base/Rect;->setY(I)V

    invoke-virtual {v1, v2}, Lcom/scalado/base/Rect;->setWidth(I)V

    invoke-virtual {v1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    return-object v1
.end method

.method private decodeJpeg(I)V
    .locals 8

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v3}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v4, Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-direct {p0, v4}, Lcom/scalado/app/rewind/AutoSession;->correctOrientation(Lcom/scalado/stream/BufferStream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findFaceDetectionDims()V

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v6}, Lcom/scalado/app/rewind/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->findMinFeathering()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v2, v5

    const-string v5, "AutoSession"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception when scaling image "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doLtw()V
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->trackingSuccessful:Z

    if-nez v1, :cond_1

    const-string v1, "AutoSession"

    const-string v2, "Tracking failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v1, v1, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    invoke-interface {v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;->onMergeCompositionError()Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v0

    invoke-static {}, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_3
    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-nez v1, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->replaceFaces()V

    iget-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->renderScreen()V

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->sendReplacementInfo()V

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->log()V

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private doSaveSourceJpeg(ILjava/lang/String;)V
    .locals 4

    const-string v0, "Outputting source %d to %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "AutoSession"

    const-string v1, "Session not initialized correctly or incorrect state. Cannot save source jpeg."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0, p2}, Lcom/scalado/app/rewind/FileUtils;->save(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureTwoMult(II)I
    .locals 1

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private findFaceDetectionDims()V
    .locals 10

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    const/16 v5, 0x3c0

    const/16 v7, 0x320

    const/16 v6, 0x4b0

    div-int/lit8 v8, v4, 0x4

    if-lt v8, v7, :cond_7

    div-int/lit8 v8, v4, 0x4

    if-gt v8, v6, :cond_7

    div-int/lit8 v4, v4, 0x4

    :goto_0
    const/16 v4, 0x300

    iget v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    if-lez v8, :cond_0

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    :cond_0
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iget-boolean v8, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v8, :cond_6

    const/16 v4, 0x500

    iget v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    if-lez v8, :cond_3

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    :cond_3
    int-to-float v8, v4

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    rem-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8, v4, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    :cond_6
    return-void

    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method private findMinFeathering()V
    .locals 7

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x454c

    div-float/2addr v5, v6

    const/high16 v6, 0x4100

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v5, 0x2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    return-void
.end method

.method private getMaxTranslation(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 7

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v5, v0, 0x3c

    int-to-float v5, v5

    const/high16 v6, 0x454c

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    if-ltz v5, :cond_0

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v5, v1

    float-to-int v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private log()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "--- Faces ---"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Faces detected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    const-string v1, "Replaced faces = %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v1, v6}, Lcom/scalado/app/rewind/RectTracker;->logDump(Z)V

    const-string v1, "--- Replaced faces ---"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time (since all imgs) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time (total) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-wide v4, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected bg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "***"

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/AutoSession$Replacement;

    const-string v2, "Replace area = %s, feath. = %d, max. trans. = %d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFeathering:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mMaxTransl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    const-string v2, "   id = %d, bg = %d, fg = %d"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    const-string v2, "   bg = %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectBg:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    const-string v2, "   fg = %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectFg:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/AutoSession;->logd2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final logd2(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private privateAddJpeg(Ljava/nio/ByteBuffer;)V
    .locals 6

    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-lt v3, v4, :cond_1

    const-string v3, "AutoSession"

    const-string v4, "All images arleady added!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/scalado/app/rewind/AutoSession;->mT0:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    :cond_2
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v3, v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/scalado/app/rewind/AutoSession;->mT0All:J

    :cond_3
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    if-nez v3, :cond_4

    new-instance v3, Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    invoke-direct {v3, v4}, Lcom/scalado/app/rewind/RectTracker;-><init>(I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/high16 v4, 0x4020

    const/high16 v5, 0x4040

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setRectScaling(FF)V

    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setMaxTranslation(F)V

    :cond_4
    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/AutoSession;->decodeJpeg(I)V

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/AutoSession;->scaleDown(I)V

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Image;

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/base/Image;

    :cond_5
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/base/Image;

    invoke-virtual {v4, v3, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v3, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->doLtw()V

    goto/16 :goto_0
.end method

.method private privateGetMergedImage()V
    .locals 4

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private privateGetSourceImage(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Image;

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession;->renderScreen(I)Lcom/scalado/base/Image;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string v2, "AutoSession"

    const-string v3, "In privateGetSourceImage: Index out of bounds or session not initialized correctly."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private privateRecycle()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedJpeg:Lcom/scalado/base/Buffer;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    iput v2, p0, Lcom/scalado/app/rewind/AutoSession;->mNumReceived:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mFirstTime:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z

    iput-boolean v2, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    return-void
.end method

.method private privateRecycleLtw()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    iput-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    return-void
.end method

.method private renderOutput(Ljava/lang/String;)V
    .locals 13

    const/16 v12, 0x8c

    const-string v11, "Exception when closing file."

    const-string v10, "AutoSession"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Outputting to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v8, :cond_0

    const-string v8, "AutoSession"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Session not initilized correctly. Not possible to output to file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v12, v9}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :try_start_0
    new-instance v7, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v7, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v2, v7, v0}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v8, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/scalado/base/Iterator;->step(I)F

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v9, 0x8c

    invoke-virtual {v8, v9, p1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v8, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v8, v5}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v7

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v8

    move-object v1, v8

    :goto_1
    :try_start_3
    const-string v8, "AutoSession"

    const-string v9, "Exception when rendering to file."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v8, "AutoSession"

    const-string v8, "Exception when closing file."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_3
    throw v8

    :catch_2
    move-exception v3

    const-string v9, "AutoSession"

    const-string v9, "Exception when closing file."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v3

    const-string v8, "AutoSession"

    const-string v8, "Exception when closing file."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v6, v7

    goto :goto_0

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_2

    :catch_4
    move-exception v8

    move-object v1, v8

    move-object v6, v7

    goto :goto_1
.end method

.method private renderScreen(I)Lcom/scalado/base/Image;
    .locals 6

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    new-instance v3, Lcom/scalado/caps/Session;

    invoke-direct {v3, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v1, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v4, v5}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v2, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v2, v3, v1}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    goto :goto_0
.end method

.method private renderScreen()V
    .locals 5

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    invoke-virtual {v2, v1}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->getDecoder()Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    new-instance v2, Lcom/scalado/caps/Session;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mLtwDecoder:Lcom/scalado/caps/localtimewarp/LocalTimeWarpDecoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    new-instance v0, Lcom/scalado/base/Image;

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v2, Lcom/scalado/caps/screen/Screen;

    iget-object v3, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v2, v3, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->draw()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scalado/app/rewind/AutoSession;->mT1:J

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v2}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mMergedImg:Lcom/scalado/base/Image;

    goto :goto_0
.end method

.method private renderToBuffer()Lcom/scalado/base/Buffer;
    .locals 9

    const-string v8, "AutoSession"

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    if-nez v7, :cond_0

    const-string v7, "AutoSession"

    const-string v7, "Session not initialized correctly. Cannot do renderToBuffer()."

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    new-instance v1, Lcom/scalado/base/Buffer;

    iget v7, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxJpegSize:I

    mul-int/lit8 v7, v7, 0x1

    invoke-direct {v1, v7}, Lcom/scalado/base/Buffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Lcom/scalado/stream/BufferStream;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v7}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    new-instance v4, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v4, v6, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v7, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_1
    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v3, v7

    :goto_2
    const-string v7, "AutoSession"

    const-string v7, "Exception when rendering to file."

    invoke-static {v8, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v3, v7

    move-object v0, v1

    goto :goto_2
.end method

.method private replaceFaces()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoSession;->createLtw()V

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->getBestStartImage()I

    move-result v0

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v5, v5, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->getMaxScoreImage()I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    const-string v5, "AutoSession"

    const-string v6, "Failed to determine best image."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/scalado/app/rewind/AutoSession;->mNumImages:I

    div-int/lit8 v0, v5, 0x2

    :cond_1
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v5, v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setBackgroundSource(I)V

    iget-object v5, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->getIds()[I

    move-result-object v3

    array-length v5, v3

    move v6, v10

    :goto_0
    if-lt v6, v5, :cond_2

    :goto_1
    iput v0, p0, Lcom/scalado/app/rewind/AutoSession;->mBestBgIndex:I

    return-void

    :cond_2
    aget v2, v3, v6

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7, v0, v2}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "id=%d unknown in bg=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/scalado/app/rewind/AutoSession;->logd(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7, v2}, Lcom/scalado/app/rewind/RectTracker;->getSelectedFg(I)I

    move-result v1

    if-eq v1, v0, :cond_6

    move v4, v11

    :goto_2
    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mTrackerState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v7, v7, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v7, :cond_5

    const/4 v4, 0x0

    :cond_5
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/scalado/app/rewind/AutoSession;->replaceOneFace(IIIZ)V

    iget-boolean v7, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_6
    move v4, v10

    goto :goto_2
.end method

.method private replaceOneFace(IIIZ)V
    .locals 12

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v0, p2}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceSource(I)V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0, p2, p3}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v8}, Lcom/scalado/app/rewind/AutoSession;->convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {p0, v9}, Lcom/scalado/app/rewind/AutoSession;->convertToSrc(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/scalado/app/rewind/AutoSession;->getMaxTranslation(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    iget v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    if-le v5, v0, :cond_2

    iget v5, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    invoke-interface {v0}, Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;->onToGreatTranslation()Lcom/scalado/app/rewind/AutoSession$Command;

    move-result-object v11

    invoke-static {}, Lcom/scalado/app/rewind/AutoSession;->$SWITCH_TABLE$com$scalado$app$rewind$AutoSession$Command()[I

    move-result-object v0

    invoke-virtual {v11}, Lcom/scalado/app/rewind/AutoSession$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x4

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->hasNeighbours(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/scalado/app/rewind/AutoSession;->mMinFeathering:I

    :cond_3
    invoke-direct {p0, v8}, Lcom/scalado/app/rewind/AutoSession;->createReplaceRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v0, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v10, 0x0

    :cond_4
    if-eqz p4, :cond_6

    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mDryMode:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v0, v3, v4, v5}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->setReplaceArea(Lcom/scalado/base/Rect;II)V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->update()V

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    invoke-virtual {v0}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->commit()V

    :cond_5
    iget-object v11, p0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$Replacement;

    move-object v1, p0

    move v2, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/scalado/app/rewind/AutoSession$Replacement;-><init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    const/16 p4, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoSession;->mAbortRequested:Z

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    new-instance v0, Lcom/scalado/app/rewind/AutoSession$Replacement;

    move-object v1, p0

    move v2, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/scalado/app/rewind/AutoSession$Replacement;-><init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scaleDown(I)V
    .locals 10

    const-string v9, "Exception when rendering image!"

    const-string v8, "AutoSession"

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mDecoders:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v3, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    :try_start_0
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    if-eqz v6, :cond_0

    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v3, Lcom/scalado/base/Image;

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims2:Lcom/scalado/base/Size;

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionCfg:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v6, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v2, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    :try_start_1
    invoke-virtual {v5, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mImgs2:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v6

    move-object v1, v6

    const-string v6, "AutoSession"

    const-string v6, "Exception when rendering image!"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v1, v6

    const-string v6, "AutoSession"

    const-string v6, "Exception when rendering image!"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendReplacementInfo()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v14

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move v1, v14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mReplacements:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mNotReplaced:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    new-array v12, v2, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v17, v12, v2

    const/4 v2, 0x1

    aput-object v15, v12, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    move-object v2, v0

    const/16 v3, 0xa0

    invoke-virtual {v2, v3, v12}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mToUiHandler:Lcom/scalado/app/rewind/AutoSession$ToUiHandler;

    move-object v2, v0

    invoke-virtual {v2, v13}, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/app/rewind/AutoSession$Replacement;

    new-instance v11, Lcom/scalado/base/Rect;

    invoke-direct {v11}, Lcom/scalado/base/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    move-object v2, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    move-object v3, v0

    invoke-static {v2, v3, v11}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v11, v6}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move v3, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move v3, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->wasFound(II)Z

    move-result v9

    new-instance v2, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;

    const/4 v4, -0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    move-object v7, v0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/scalado/app/rewind/AutoSession$Replacement;

    new-instance v11, Lcom/scalado/base/Rect;

    invoke-direct {v11}, Lcom/scalado/base/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    move-object v2, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    move-object v3, v0

    invoke-static {v2, v3, v11}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v11, v6}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move v3, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    move v3, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->wasFound(II)Z

    move-result v9

    new-instance v2, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;

    const/4 v4, -0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    move v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mOrgLargeRect:Landroid/graphics/Rect;

    move-object v7, v0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;-><init>(Lcom/scalado/app/rewind/AutoSession;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/scalado/app/rewind/AutoSession$ReplaceInfo;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public static setLogging(Z)V
    .locals 0

    sput-boolean p0, Lcom/scalado/app/rewind/AutoSession;->sLogging:Z

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->setLogging(Z)V

    return-void
.end method

.method private transformFdToSession(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private transformToScreen(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    invoke-static {p1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/AutoSession;->transformToScreen(Lcom/scalado/base/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private transformToScreen(Lcom/scalado/base/Rect;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    return-object v1
.end method


# virtual methods
.method public addJpeg(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public finish()V
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getMergedImage()V
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getSourceImage(I)V
    .locals 4

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public numSourceJpegs()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mJpegs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public outputToFile(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public saveSourceJpeg(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession;->mLooperThread:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$2(Lcom/scalado/app/rewind/AutoSession$LooperThread;)Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAdvisor(Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mAdvisor:Lcom/scalado/app/rewind/AutoSession$AutoSessionAdvisor;

    return-void
.end method

.method public setBaseFaceDetctionWidth(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetectionBaseW:I

    return-void
.end method

.method public setCompositionMaxTranslation(F)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mRelMaxTranslation:F

    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    return-void
.end method

.method public setMaxTranslation(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mMaxMaxTranslation:I

    return-void
.end method

.method public setMinTranslation(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mMinMaxTranslation:I

    return-void
.end method

.method public setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 3

    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenDims:Lcom/scalado/base/Size;

    iput-object p2, p0, Lcom/scalado/app/rewind/AutoSession;->mScreenCfg:Lcom/scalado/base/Image$Config;

    return-void
.end method

.method public setSecondaryFaceDetctionWidth(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/AutoSession;->mFaceDetection2W:I

    return-void
.end method

.method public setSecondaryImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoSession;->mUseImage2:Z

    return-void
.end method
