.class public Lcom/android/contacts/detail/ContactDetailFragmentCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailFragmentCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ABOUT_PAGE:I = 0x0

.field private static final FRAGMENT_WIDTH_SCREEN_WIDTH_FRACTION:F = 0.85f

.field private static final MAX_ALPHA:F = 0.5f

.field private static final MAX_FRAGMENT_VIEW_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATES_PAGE:I = 0x1


# instance fields
.field private final mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

.field private mAllowedHorizontalScrollLength:I

.field private mCurrentPage:I

.field private mDetailFragmentView:Landroid/view/View;

.field private mEnableSwipe:Z

.field private mLastScrollPosition:I

.field private mLowerThreshold:I

.field private mMinFragmentWidth:I

.field private final mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

.field private mUpdatesFragmentView:Landroid/view/View;

.field private mUpperThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, -0x8000

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 48
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 54
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 60
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 196
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 101
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 103
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040018

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    invoke-virtual {p0, p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailFragmentCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    return-void
.end method

.method private getDesiredPage()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v2, :pswitch_data_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid current page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :pswitch_0
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    if-le v2, v3, :cond_0

    .line 269
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 265
    goto :goto_0

    .line 269
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    if-ge v2, v3, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private snapToEdge()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 254
    return-void

    .line 247
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->smoothScrollTo(II)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->smoothScrollTo(II)V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 228
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 230
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 232
    return-void
.end method

.method private updateTouchInterceptors()V
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    invoke-interface {v0}, Lcom/android/contacts/detail/ViewOverlay;->disableTouchInterceptor()V

    .line 218
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    invoke-interface {v0}, Lcom/android/contacts/detail/ViewOverlay;->disableTouchInterceptor()V

    .line 222
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public enableSwipe(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    .line 180
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 187
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateTouchInterceptors()V

    .line 190
    :cond_0
    return-void

    .line 181
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 111
    .local v2, screenWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 115
    .local v1, screenHeight:I
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 116
    const v3, 0x3f59999a

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    .line 117
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    .line 119
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    .line 120
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAllowedHorizontalScrollLength:I

    iget v4, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLowerThreshold:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpperThreshold:I

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 124
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, child:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-eqz v3, :cond_2

    .line 128
    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mMinFragmentWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 139
    .end local v0           #child:Landroid/view/View;
    :cond_1
    :goto_0
    invoke-static {v2, p1}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setMeasuredDimension(II)V

    .line 142
    return-void

    .line 134
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 237
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mLastScrollPosition:I

    .line 241
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->updateAlphaLayers()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 276
    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mEnableSwipe:Z

    if-nez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getDesiredPage()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 281
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->snapToEdge()V

    move v0, v1

    .line 282
    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 5
    .parameter "pageIndex"

    .prologue
    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    .line 149
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    .line 151
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    if-eqz v0, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 153
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mCurrentPage:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ViewOverlay;->setAlphaLayerValue(F)V

    .line 155
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 152
    goto :goto_0

    :cond_2
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method public setFragmentViews(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "detailFragmentView"
    .parameter "updatesFragmentView"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mDetailFragmentView:Landroid/view/View;

    .line 162
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragmentView:Landroid/view/View;

    .line 163
    return-void
.end method

.method public setFragments(Lcom/android/contacts/detail/ViewOverlay;Lcom/android/contacts/detail/ViewOverlay;)V
    .locals 0
    .parameter "aboutFragment"
    .parameter "updatesFragment"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mAboutFragment:Lcom/android/contacts/detail/ViewOverlay;

    .line 170
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->mUpdatesFragment:Lcom/android/contacts/detail/ViewOverlay;

    .line 171
    return-void
.end method
