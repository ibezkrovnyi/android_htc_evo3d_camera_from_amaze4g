.class Lcom/scalado/app/rewind/RectTracker;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$AbstractFace;,
        Lcom/scalado/app/rewind/RectTracker$Comparison;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$RankedId;,
        Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;,
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$State;,
        Lcom/scalado/app/rewind/RectTracker$StatisticPoint;,
        Lcom/scalado/app/rewind/RectTracker$TrackedImage;,
        Lcom/scalado/app/rewind/RectTracker$TrackedRect;,
        Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    }
.end annotation


# static fields
.field private static final BLINK_DIST_THRES:I = 0x5

.field private static final BLINK_THRES:I = 0x14

.field private static final BLINK_UPPER_THRES:I = 0x5a

.field private static final DEFAULT_MAX_TRANSLATION:F = 0.15f

.field private static final MAX_REL_TRANSLATION:F = 0.06f

.field private static final TAG:Ljava/lang/String; = "RectTracker"

.field private static final UNKNOWN_SCORE:F = -4.0f

.field private static mBlinkMultiplier:F = 0.0f

.field private static final mBlinkThreshold:I = 0x3c

.field private static maxConnectTime:J

.field private static sDxdyCount:I

.field private static sLogging:Z

.field private static sMaxRelDx:F

.field private static sMaxRelDy:F

.field private static sMaxRelVftDx:F

.field private static sMaxRelVftDy:F

.field private static sSequenceCount:I

.field private static sTranslations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignRectSizes:Z

.field private mAllFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyzeComplete:Z

.field private mBestImage:I

.field private mBestImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mBestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$RankedId;",
            ">;"
        }
    .end annotation
.end field

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private mDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

.field private mFaceScaleX:F

.field private mFaceScaleY:F

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFacesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mGuessRects:Z

.field private mImageDims:Lcom/scalado/base/Size;

.field private mImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsComplete:Z

.field private mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

.field private mLockingEnabled:Z

.field private mMatches:[I

.field private mMaxNumRects:I

.field private mMaxScoreImage:I

.field private mMaxTranslation:F

.field private mMinFaceDiffX:F

.field private mMinFaceDiffY:F

.field private mMinMatches:I

.field private mNumAdded:I

.field private mNumGuessed:I

.field private mPredefined:Z

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/scalado/app/rewind/RectTracker$State;

.field private mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mUseVfTracker:Z

.field private mUseVftForDelta:Z

.field private mVftDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxDisplacementModifier:F

.field totalFaceDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-boolean v3, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    const/high16 v0, 0x3f80

    sput v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    sput v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    const/4 v0, 0x0

    sput-object v0, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    sput v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    new-instance v1, Lcom/scalado/base/Size;

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    const/high16 v1, 0x4000

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    const v1, 0x3e19999a

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    new-instance v1, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$State;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([[Landroid/graphics/Rect;[[F)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v5, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v5, p0, v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    iput v8, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    new-instance v5, Lcom/scalado/base/Size;

    const/16 v6, 0x400

    const/16 v7, 0x300

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    const/high16 v5, 0x3fc0

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    const/high16 v5, 0x4000

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    const v5, 0x3e19999a

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    new-instance v5, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v5, p0, v10}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$State;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-lt v0, v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-lt v0, v5, :cond_1

    const/4 v0, 0x0

    :goto_2
    array-length v5, p2

    if-lt v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    return-void

    :cond_0
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v4, p0, v0, v10}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_3
    aget-object v5, p1, v0

    array-length v5, v5

    if-lt v2, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aget-object v5, p1, v0

    aget-object v5, v5, v2

    invoke-direct {p0, v0, v1, v5}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v3, p0, v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    aget-object v5, p2, v0

    aget v5, v5, v8

    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    aget-object v5, p2, v0

    aget v5, v5, v9

    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6()F
    .locals 1

    sget v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9()J
    .locals 2

    sget-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    return-wide v0
.end method

.method private accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;)",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    move v0, v2

    :goto_0
    if-lt v0, v1, :cond_1

    if-ge p2, p1, :cond_0

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    :cond_0
    return-object v3

    :cond_1
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private accumulateDelta(IILjava/util/Vector;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ")",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    const/4 v3, 0x0

    if-ne p1, p2, :cond_1

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    :cond_0
    :goto_0
    return-object p4

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    move v1, v2

    :goto_1
    if-le v1, v0, :cond_2

    if-ge p2, p1, :cond_0

    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    goto :goto_0

    :cond_2
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aput-object p4, v0, p3

    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    invoke-static {v0, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$11(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method private alignRectSizes()V
    .locals 11

    const/high16 v10, 0x3f00

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v4

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v0

    mul-float/2addr v9, v10

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v4

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    int-to-float v9, v0

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    sub-int v3, v2, v3

    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$4(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyze2()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v5, Ljava/util/Vector;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-direct {v0, p0, v2, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$AbstractFace;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1, v2, v9}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    :cond_2
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aput-object v3, v5, v1

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-static {v5, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$29(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    sub-int v5, v1, v8

    if-ltz v5, :cond_6

    sub-int v5, v1, v8

    invoke-direct {p0, v2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$30(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V

    :cond_6
    add-int/lit8 v5, v1, 0x1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v2, v5}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$31(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V

    goto :goto_3
.end method

.method private applyViewfinderTracker(Lcom/scalado/base/Image;)V
    .locals 8

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Image dimensions doesn\'t match!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v4, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v6, :cond_2

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v6, :cond_3

    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    :cond_3
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    if-lez v1, :cond_5

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    :cond_4
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    return-void
.end method

.method private approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    if-le p2, p3, :cond_0

    move v1, p3

    const/high16 v2, 0x3f80

    :goto_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    invoke-direct {p0, p4, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v0, v3, v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$11(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V

    return-object v3

    :cond_0
    if-ge p2, p3, :cond_1

    move v1, p2

    const/high16 v2, -0x4080

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "toImage == fromImage"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private calculateOptimalImages2()V
    .locals 4

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Best bg image unknown."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    return-void
.end method

.method private calculateStatistics()V
    .locals 6

    const/4 v3, -0x1

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    iget v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-le v1, v3, :cond_1

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private connect(II)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v10

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_0

    array-length v5, v10

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "*** Connecting imgs %d -> %d (#ids=(%d,%d))"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, v19

    array-length v0, v0

    move v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    array-length v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    new-array v11, v5, [Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    const/16 v20, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_4

    array-length v5, v10

    move v0, v5

    new-array v0, v0, [Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-object/from16 v24, v0

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_6

    const/16 v20, 0x0

    :goto_3
    array-length v5, v11

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_7

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_9

    const/4 v5, 0x0

    aget-object v5, v24, v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$12(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v22

    const/4 v5, 0x0

    aget-object v5, v24, v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    const/4 v5, 0x0

    aget-object v5, v24, v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v5

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    add-float v22, v22, v5

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    move v5, v0

    mul-float v22, v22, v5

    const/16 v23, 0x0

    const/16 v20, 0x0

    :goto_5
    array-length v5, v11

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_a

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v8, v0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v9, v19

    invoke-direct/range {v4 .. v12}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    const/16 v27, 0x1

    :goto_6
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v5

    if-nez v5, :cond_3

    array-length v5, v10

    move/from16 v0, v27

    move v1, v5

    if-lt v0, v1, :cond_d

    :cond_3
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "RectTracker"

    const-string v6, "Failed to connect!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    :cond_4
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v6, v10

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    aput-object v5, v11, v20

    const/16 v21, 0x0

    :goto_7
    array-length v5, v10

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_5

    aget-object v5, v11, v20

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_5
    aget v6, v19, v20

    aget v8, v10, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v9, v0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/scalado/app/rewind/RectTracker;->distance(IIIILjava/util/HashMap;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v5, v0

    aget v6, v10, v21

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v26

    aget-object v5, v11, v20

    aget v6, v10, v21

    move-object v0, v5

    move v1, v6

    move/from16 v2, v18

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    :cond_6
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    aput-object v5, v24, v20

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v21, 0x0

    :goto_8
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_8

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    :cond_8
    aget-object v5, v24, v21

    aget-object v6, v11, v20

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v6

    aget-object v6, v6, v21

    iget v6, v6, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    :cond_9
    aget-object v5, v24, v20

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    :cond_a
    const-string v25, ""

    const/16 v21, 0x0

    :goto_9
    aget-object v5, v11, v20

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_b

    if-eqz v21, :cond_c

    aget-object v5, v11, v20

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v21

    iget v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v5, v5, v22

    if-ltz v5, :cond_c

    :cond_b
    aget-object v5, v11, v20

    move-object v0, v5

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " %2d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v11, v20

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v9

    aget-object v9, v9, v21

    iget v9, v9, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v8, v0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v9, v19

    invoke-direct/range {v4 .. v12}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I

    move-result v5

    const v6, 0x186a0

    if-gt v5, v6, :cond_3

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    :cond_e
    const/16 v20, 0x0

    :goto_a
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Min matches = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_0

    const-string v5, "   %d->%d : %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, v20, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    move-object v8, v0

    aget v8, v8, v20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    :cond_f
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v5

    aget v13, v5, v20

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v5

    aget v14, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-direct/range {v12 .. v17}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(IIIILjava/util/HashMap;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_a
.end method

.method private connectAllImages()V
    .locals 8

    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->numRectsInImage(I)I

    move-result v6

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-ne v6, v7, :cond_1

    const/4 v2, 0x0

    :goto_1
    array-length v6, v5

    if-lt v2, v6, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget v6, v5, v2

    add-int v4, v1, v6

    if-ltz v4, :cond_3

    if-lt v4, v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v6, v6, v0

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-eq v6, v7, :cond_3

    invoke-direct {p0, v4, v1}, Lcom/scalado/app/rewind/RectTracker;->connect(II)V

    goto :goto_2

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private convertToSession(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v1, p1, v0}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    array-length v6, v4

    new-array v3, v6, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v0, 0x0

    :goto_1
    array-length v6, v4

    if-lt v0, v6, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    aget-object v6, v4, v0

    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createFaceDetector()V
    .locals 4

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/scalado/caps/face/FaceDetectorFactory;->getFaceDetector(Z)Lcom/scalado/caps/face/FaceDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    new-instance v1, Lcom/scalado/caps/face/FeatureSet;

    invoke-direct {v1}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    :try_start_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v2, v1}, Lcom/scalado/caps/face/FaceDetector;->setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "RectTracker"

    const-string v3, "Failed to set detectable features."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;
    .locals 9

    const/4 v6, 0x0

    if-eqz p4, :cond_0

    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v5, -0x3f80

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private distance(IIIILjava/util/HashMap;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)F"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p1, p5}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    return v2
.end method

.method private enlargeRectangles(FF)V
    .locals 46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_0
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_2

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_1
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-nez v41, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->filterFaces()Ljava/util/Vector;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-void

    :cond_2
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_3
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_3

    const/high16 v3, 0x3fc0

    const v5, 0x3e4ccccd

    mul-float v42, v3, p2

    div-float v4, v42, p1

    sub-float v21, p1, v3

    sub-float v22, p2, v4

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_4

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_4

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    if-eqz v42, :cond_4

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v42, v42, v43

    if-nez v42, :cond_5

    :cond_4
    const-string v42, "No eye rects for img=%d, id=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v11, v42, v43

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v12, v42, v43

    cmpl-float v42, v11, v5

    if-lez v42, :cond_6

    const/16 v34, 0x0

    :goto_1
    cmpl-float v42, v12, v5

    if-lez v42, :cond_7

    const/16 v37, 0x0

    :goto_2
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$15(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v36

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v39

    mul-float v42, v21, v34

    add-float v42, v42, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v31, v42, v43

    mul-float v42, v22, v37

    add-float v42, v42, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v14, v42, v43

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v36, v31

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v39, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v36, v31

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v39, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v42, Landroid/graphics/Rect;

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$17(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_6
    const/high16 v42, 0x3f80

    div-float v43, v11, v5

    sub-float v34, v42, v43

    goto/16 :goto_1

    :cond_7
    const/high16 v42, 0x3f80

    div-float v43, v12, v5

    sub-float v37, v42, v43

    goto/16 :goto_2

    :cond_8
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    const/4 v15, 0x0

    :goto_3
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move v0, v15

    move/from16 v1, v41

    if-ge v0, v1, :cond_1

    add-int/lit8 v17, v15, 0x1

    :goto_4
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Vector;->size()I

    move-result v41

    move/from16 v0, v17

    move/from16 v1, v41

    if-lt v0, v1, :cond_9

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_9
    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    :cond_a
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_b
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    move-object/from16 v0, v41

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    if-eqz v41, :cond_a

    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    if-eqz v41, :cond_a

    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v41

    if-eqz v41, :cond_a

    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object v0, v10

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object v0, v10

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v41, "*** Faces intersects: %d - %d"

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    :cond_c
    const/4 v7, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v41

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_12

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_10

    move-object/from16 v28, v25

    move-object/from16 v29, v26

    :goto_6
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v41

    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move v6, v0

    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v32, v41, v6

    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move v8, v0

    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v42, v32, v8

    add-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v35

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v41, v0

    cmpl-float v41, v8, v41

    if-ltz v41, :cond_11

    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v35

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    move/from16 v0, v35

    move/from16 v1, v41

    if-le v0, v1, :cond_d

    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move/from16 v0, v35

    move/from16 v1, v41

    if-lt v0, v1, :cond_e

    :cond_d
    const/4 v9, 0x1

    :cond_e
    :goto_7
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    const/4 v7, 0x1

    :cond_f
    :goto_8
    if-eqz v7, :cond_a

    invoke-static/range {v25 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v28, v26

    move-object/from16 v29, v25

    goto/16 :goto_6

    :cond_11
    const/4 v9, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_15

    move-object/from16 v30, v25

    move-object/from16 v27, v26

    :goto_9
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v41

    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move v6, v0

    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v33, v41, v6

    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move v8, v0

    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    mul-float v42, v33, v8

    add-float v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->round(F)I

    move-result v38

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v41, v0

    cmpl-float v41, v8, v41

    if-ltz v41, :cond_16

    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v38

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    move/from16 v0, v38

    move/from16 v1, v41

    if-le v0, v1, :cond_13

    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move/from16 v0, v38

    move/from16 v1, v41

    if-lt v0, v1, :cond_14

    :cond_13
    const/4 v9, 0x1

    :cond_14
    :goto_a
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v41, v0

    if-eqz v41, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_15
    move-object/from16 v30, v26

    move-object/from16 v27, v25

    goto/16 :goto_9

    :cond_16
    const/4 v9, 0x1

    goto :goto_a
.end method

.method private estimateDeltas()V
    .locals 14

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v5, 0x0

    :goto_0
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v5, v10, :cond_4

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    const-string v10, "Total Delta: (%f,%f) std dev = (%f, %f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v13}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x1

    :goto_1
    array-length v11, v7

    if-ge v5, v11, :cond_0

    const/4 v11, 0x1

    sub-int v11, v5, v11

    aget-object v9, v7, v11

    aget-object v1, v7, v5

    if-eqz v9, :cond_2

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float v3, v11, v12

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    sub-float v4, v11, v12

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    const/4 v12, 0x1

    sub-int v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v11, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$6(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$7(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    const-string v10, "Delta       %d -> %d: (%f,%f), std dev = (%f, %f), n = %d"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$8(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$9(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const-string v10, "(VFT) Delta %d -> %d: (%f,%f)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    :cond_5
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v11

    aput v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private filterFaces()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/Vector;

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    return-object v2

    :cond_0
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private findFirstImage(Ljava/util/HashMap;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    const/4 v3, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private findLastImage(Ljava/util/HashMap;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    const/4 v4, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v1, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    :goto_1
    if-gez v0, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    :cond_0
    return-object v0
.end method

.method private getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    return-object v0
.end method

.method private getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aget-object v1, v0, p3

    if-eqz v1, :cond_1

    aget-object v1, v0, p3

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private getTransforms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    goto :goto_0
.end method

.method private guessRects(I)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v22

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    new-instance v24, Ljava/util/Vector;

    invoke-direct/range {v24 .. v24}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v23

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v20, 0x0

    :goto_2
    if-lez v16, :cond_3

    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    :cond_3
    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v22

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x1

    sub-int v7, v16, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v11

    new-instance v9, Landroid/graphics/Rect;

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v9, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v12

    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-int v14, v6

    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-int v15, v6

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    new-instance v5, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v6, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    move v3, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    const-string v6, "Making up rect (img=%d id=%d %s)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    aput-object v9, v10, v7

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_2

    :cond_6
    move/from16 v21, v20

    const/16 v20, 0x0

    :goto_3
    if-ltz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v0, v19

    move v1, v6

    if-ge v0, v1, :cond_7

    move/from16 v0, v20

    move/from16 v1, p1

    if-lt v0, v1, :cond_8

    :cond_7
    add-int v21, v21, v20

    if-lez v21, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v22

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v11

    new-instance v9, Landroid/graphics/Rect;

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v9, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v12

    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    new-instance v5, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v6, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v8

    move v3, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    const-string v6, "Making up rect (img=%d id=%d %s)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    aput-object v9, v10, v7

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3
.end method

.method private idsOverlaps(Ljava/util/HashMap;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)Z"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private inNumImages(Ljava/util/HashMap;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isComplete(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v1

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not complete id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 5

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v1

    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v2

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V

    :cond_0
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$13(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)V

    :cond_2
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static logDumpTranslations()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "*** Translations ***"

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const-string v4, "Count = %d"

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const-string v4, "Relative to FD dims."

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const-string v4, "Max (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const-string v4, "Max VFT (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const-string v4, "%03d. img%d->%d, id%d: (%f, %f), VFT (%f, %f), diff (%f, %f)"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$4(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$6(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private logTranslations()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    return-void

    :cond_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_0

    const/4 v3, 0x1

    sub-int v3, v17, v3

    move-object/from16 v0, p0

    move v1, v7

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v23

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    if-eqz v23, :cond_2

    if-nez v22, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%d -> %d: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    sub-int v6, v17, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_3
    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "%d -> %d: no rects"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    sub-int v6, v17, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/high16 v3, 0x3f00

    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v20, v3, v4

    const/high16 v3, 0x3f00

    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v18, v3, v4

    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v13, v3

    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v14, v3

    div-float v8, v13, v20

    div-float v9, v14, v18

    const-string v3, "%d -> %d: (dx, dy) = (%f, %f) (rel to f. size)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    sub-int v6, v17, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    move v3, v0

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, v17, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    div-float v8, v13, v16

    div-float v9, v14, v15

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    div-float v10, v3, v16

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    div-float v11, v3, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", (%f, %f), vft=(%f, %f)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x3

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    sput v8, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    :cond_6
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    sput v9, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    :cond_7
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    sput v10, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    :cond_8
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    sput v11, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    :cond_9
    sget-object v3, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v3, :cond_a

    sget-object v13, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    sget v5, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    const/4 v4, 0x1

    sub-int v6, v17, v4

    const/4 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$TranslationStatistics;)V

    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_a
    sget v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    :cond_b
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final logdind(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    const-string v0, "RectTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float/2addr v5, v6

    div-float v3, v5, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    add-float/2addr v5, v6

    div-float v4, v5, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v5, v7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    mul-float v5, v7, v2

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    mul-float v5, v7, v0

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    mul-float v5, v7, v2

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    mul-float v5, v7, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method private mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_d

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "# ids = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_e

    :cond_2
    return-object v14

    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_5
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    if-eq v6, v7, :cond_5

    if-eqz p2, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    :cond_6
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v12

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move v0, v12

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move v0, v4

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v11, v11, v24

    if-lez v15, :cond_7

    const-string v24, "id=%d and id=%d #overlaps=%d."

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    :cond_7
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/4 v8, 0x1

    :cond_8
    :goto_5
    if-eqz v8, :cond_5

    const-string v24, "id=%d and id=%d equal, merging (approx.)."

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move v0, v4

    move/from16 v1, v24

    if-lt v0, v1, :cond_c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v7

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v16

    aput v16, v17, v4

    add-float v11, v11, v16

    const v24, 0x3e4ccccd

    cmpg-float v24, v16, v24

    if-ltz v24, :cond_a

    add-int/lit8 v15, v15, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_b
    const/16 v24, 0x1

    move v0, v15

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    const v24, 0x3e19999a

    cmpl-float v24, v11, v24

    if-lez v24, :cond_8

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v7

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$27(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V

    invoke-static/range {v18 .. v18}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private mergeIds(Ljava/util/HashMap;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    aget-object v3, v1, v0

    if-nez v3, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    aput-object v3, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v18

    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "# ids = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_2
    return-object v18

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eq v8, v15, :cond_5

    if-eqz p2, :cond_6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v12

    add-int/lit8 v7, v17, 0x1

    if-ltz v17, :cond_5

    if-ltz v12, :cond_5

    add-int/lit8 v6, v17, 0x2

    if-ne v6, v12, :cond_5

    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    move v3, v12

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v19

    const v6, 0x3e4ccccd

    cmpl-float v6, v19, v6

    if-ltz v6, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    new-instance v5, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v11, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    const-string v22, ""

    move v13, v12

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v13, v6, :cond_7

    const-string v6, "Merging (approx.) %d with %d (in images %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v22, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v8

    move v3, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v8

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v15

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v24

    if-eqz v9, :cond_8

    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    move v1, v8

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " X"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_4

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v16

    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v15}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "# ids = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_2
    return-object v16

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v8, v5, :cond_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v8, v5, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v5, v0

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    const/16 v18, 0x0

    const/4 v10, 0x0

    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v18, :cond_0

    if-eqz v10, :cond_0

    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$2(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v19

    const-string v20, ""

    add-int/lit8 v11, v8, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v11, v5, :cond_9

    const-string v5, "Merging %d with %d (in images %s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v20, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v8

    goto/16 :goto_2

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    if-eq v5, v13, :cond_5

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->idsOverlaps(Ljava/util/HashMap;II)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$Comparison;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$Comparison;)V

    if-eqz v10, :cond_8

    invoke-static {v4, v10}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$1(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v5

    if-lez v5, :cond_5

    :cond_8
    move-object v10, v4

    move-object/from16 v18, v7

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    move v1, v13

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private mergeRects(IIIILjava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)V"
        }
    .end annotation

    if-ne p3, p4, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image == slave image."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    sub-int v6, p3, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image and slave image not next to each other."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-ne p1, p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master ID == slave ID."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    if-le p4, p3, :cond_4

    const/4 v1, 0x1

    :goto_0
    const-string v4, ""

    add-int v2, p3, v1

    :goto_1
    if-ltz v2, :cond_3

    if-lt v2, v5, :cond_5

    :cond_3
    const-string v6, "Merging %d with %d (in images %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p5, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    return-void

    :cond_4
    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p5, p2, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    :goto_2
    add-int/2addr v2, v1

    goto :goto_1

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private nonOverlapsBetween(Ljava/util/HashMap;II)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)[I"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    return-object v0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private numRectsInImage(I)I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private optimizeSelection()V
    .locals 14

    new-instance v8, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    const-string v9, "RectTracker"

    const-string v10, "Failed to determine best images."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$6(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lt v3, v9, :cond_1

    const-string v9, "bg = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    array-length v9, v9

    if-lt v3, v9, :cond_2

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    const-string v9, "num poss %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v9, "cand %f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v4

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    aget v2, v9, v3

    if-gez v2, :cond_3

    const-string v9, "%d (don\'t care)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v7, v0

    :goto_3
    invoke-static {v1, v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$15(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "id %d: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_3
    if-eq v0, v2, :cond_5

    invoke-static {v1, v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$14(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "%d, cost = %f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v7, v2

    goto :goto_3

    :cond_4
    const-string v9, "%d, (don\'t dare, %d cost = %f)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v7, v0

    goto :goto_3

    :cond_5
    const-string v9, "%d (bg)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v7, v0

    goto/16 :goto_3
.end method

.method private privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    move-object v5, v0

    if-nez v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->createFaceDetector()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object v5, v0

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/scalado/caps/face/FaceDetector;->detectFaces(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    move-wide v5, v0

    sub-long v7, v12, v14

    add-long/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    const/4 v5, 0x4

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_2

    const-string v5, "RectTracker.Benchmark"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Face detection time is = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/caps/face/FaceCollection;->getSize()I

    move-result v21

    const-string v5, "[%d] Faces detected = %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v21, :cond_3

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FaceCollection;->getFaceAt(I)Lcom/scalado/caps/face/Face;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getSmilePercent()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getBlinkPercent()I

    move-result v16

    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getId()I

    move-result v7

    if-ltz v22, :cond_6

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v7

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_a
    move-object/from16 v5, p0

    move/from16 v6, p3

    invoke-direct/range {v5 .. v11}, Lcom/scalado/app/rewind/RectTracker;->setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v7

    move/from16 v3, v22

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setSmileBlink(IIII)V

    const-string v5, "%s, id = %d (s=%d, b=%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    const-string v5, "RectTracker"

    const-string v6, "Excpetion:"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v18

    const/4 v5, 0x0

    :goto_0
    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v5, 0x0

    :goto_1
    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$37(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v3

    invoke-static {v8, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$38(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)V

    new-instance v3, Lcom/scalado/app/rewind/RectTracker$RankedId;

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    aput-object v3, p2, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v13, -0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v11, v5

    move/from16 v12, p1

    invoke-direct/range {v9 .. v16}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V

    aput-object v9, p2, v5

    goto :goto_3

    :cond_2
    aget-object v3, p2, v5

    iget-object v3, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_4
    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    aget-object v3, p2, v5

    iget-object v3, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v3, :cond_5

    aget-object v3, p2, v5

    iget-object v3, v3, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private rankImages()I
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v15

    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    const/4 v11, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v15, :cond_b

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    return v6

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-object v10, v0

    const/16 v20, 0x0

    aput-object v7, v10, v20

    const/4 v9, 0x0

    :goto_2
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move v0, v9

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-object v14, v0

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    const/4 v9, 0x0

    :goto_4
    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v9, 0x0

    :goto_5
    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v20, v9, 0x1

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    aput-object v5, v10, v20

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    aget-object v20, v10, v9

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    aget-object v17, v20, v8

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v20

    aput-object v20, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    aget-object v20, v10, v9

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v20

    aget-object v17, v20, v8

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$32(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$33(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$34(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$35(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$36(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_5
    const/16 v20, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    new-array v14, v15, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v13

    const/16 v19, 0x1

    sub-int v19, v15, v19

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    move v5, v0

    const-string v16, "   "

    if-eqz v13, :cond_a

    const-string v19, "id %d (best img = %d)"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_7
    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    aget v19, v18, v5

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v5

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v14}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$18(Lcom/scalado/app/rewind/RectTracker$AbstractFace;[Lcom/scalado/app/rewind/RectTracker$RankedId;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_7
    aget-object v19, v14, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    const-string v19, "%simg=%d, (score=%1.5f)"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    aget-object v22, v14, v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aget-object v22, v14, v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v19

    if-eqz v19, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ", rank=%d, (s=%d, b=%d)"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_9
    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ", rank=%d, [no s & b]"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ", [no rect]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_a
    const-string v19, "id %d (best img = ?)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const-string v19, "%sWARNING: id %d couldn\'t determine best image."

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    const/16 v19, 0x1

    move-object v0, v7

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$17(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)V

    goto/16 :goto_8

    :cond_b
    aget v19, v18, v8

    move/from16 v0, v19

    move v1, v11

    if-le v0, v1, :cond_c

    aget v11, v18, v8

    move v6, v8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method private rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v3, v0

    div-float v2, v0, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleFaceDetection()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    return-void
.end method

.method private relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;
    .locals 8

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v6, v7

    :goto_0
    return-object v6

    :cond_1
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    move-object v6, v7

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v3, v6

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v2, v6

    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v1, v6

    div-float v4, v0, v3

    div-float v5, v1, v2

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$13(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)V

    :cond_1
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p4, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    aput-object v3, v1, v2

    :cond_2
    return-void

    :cond_3
    move-object v3, v4

    goto :goto_0

    :cond_4
    move-object v3, v4

    goto :goto_1
.end method

.method public static setLogging(Z)V
    .locals 0

    sput-boolean p0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    return-void
.end method

.method private translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    invoke-direct {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p3, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$5(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)V

    return-object v2
.end method

.method private updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {p3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v2, 0x0

    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aput-object v5, p0, p2

    return-void

    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateMinMatches()V
    .locals 3

    const v1, 0x7fffffff

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public analyze()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateStatistics()V

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->estimateDeltas()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# ids = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->connectAllImages()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->alignRectSizes()V

    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->logTranslations()V

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->isComplete(Ljava/util/HashMap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$State;->isComplete:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->guessRects(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze()V

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze2()V

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->enlargeRectangles(FF)V

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->rankImages()I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateOptimalImages2()V

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->optimizeSelection()V

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0
.end method

.method public canReplace()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deltaForRectX(III)I
    .locals 2

    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaForRectY(III)I
    .locals 2

    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaX(II)I
    .locals 2

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaY(II)I
    .locals 2

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public getBestImage(I)I
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    return v1
.end method

.method public getBestImage(II)I
    .locals 4

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    aget-object v1, v0, v2

    iget-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getBestStartImage()I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getEnlargedRect(II)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v1, :cond_0

    aget-object v4, v1, p1

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v6

    :goto_0
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v6

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v4, v3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v4, v6

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    aget-object v4, v1, p1

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0
.end method

.method public getError()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    return v0
.end method

.method public getId(II)I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    return v0
.end method

.method public getIds()[I
    .locals 3

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$12(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getListener()Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    return-object v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v2, v5, [I

    const/4 v0, 0x0

    :goto_1
    array-length v5, v2

    if-lt v0, v5, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    aput v5, v2, v0

    goto :goto_2
.end method

.method public getMaxScoreImage()I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    return v0
.end method

.method public getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRect(II)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getRectById(II)Landroid/graphics/Rect;
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRectInImage(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 11

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v9, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    :goto_0
    if-eqz v4, :cond_3

    if-ne p2, p3, :cond_2

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    return-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v9

    invoke-direct {p0, v9, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    move-object v9, v3

    goto :goto_1
.end method

.method public getRelativeAbsTranslation(III)F
    .locals 9

    invoke-virtual {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float v1, v5, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float v2, v5, v6

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v1, v5

    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v2, v5

    float-to-double v5, v0

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v0, v5

    move v5, v0

    goto :goto_0
.end method

.method public getScore(II)F
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x80

    goto :goto_0
.end method

.method public getSelectedBg(I)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getSelectedFg(I)I
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$11(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v1

    goto :goto_0
.end method

.method public getSessionRectById(II)Landroid/graphics/Rect;
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$22(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    return-object v0
.end method

.method public hasNeighbours(II)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    return v0
.end method

.method public logDump(Z)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    const-string v4, "Face detection dims: %dx%d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const-string v4, "[%d, %d] id=%d, rect=%s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v4, "[%d, %d] id=%d, rect=%s, smile=%d, blink=%d, score=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x5

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public numImages()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public numRects()I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    return v0
.end method

.method public numRects(I)I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V

    goto :goto_0
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 5

    const/high16 v4, 0x40e0

    const/high16 v3, 0x3f80

    new-instance v0, Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x444c

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x4419

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    return-void
.end method

.method public setMaxTranslation(F)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    return-void
.end method

.method public setRectScaling(FF)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    return-void
.end method

.method public setSmileBlink(IIII)V
    .locals 1

    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$14(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V

    return-void
.end method

.method public trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    return-void
.end method

.method public wasFound(II)Z
    .locals 3

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    aget-object v1, v0, p1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v1

    goto :goto_0
.end method
