.class public Lcom/android/contacts/detail/ContactDetailTabCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:F = 0.5f

.field private static final TAB_COUNT:I = 0x2

.field private static final TAB_INDEX_ABOUT:I = 0x0

.field private static final TAB_INDEX_UPDATES:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAboutTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAllowedHorizontalScrollLength:I

.field private mAllowedVerticalScrollLength:I

.field private mCurrentTab:I

.field private mLastScrollPosition:I

.field private mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mScrollToCurrentTab:Z

.field private mStatusPhotoView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mTabDisplayLabelHeight:I

.field private mTabHeightScreenWidthFraction:F

.field private mTabWidthScreenWidthFraction:F

.field private mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private final mYCoordinateArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v2, 0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 62
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    .line 66
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 69
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 70
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 153
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 87
    invoke-virtual {p0, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    .line 92
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    .line 94
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    return-object v0
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 168
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    .line 170
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    .line 172
    return-void
.end method


# virtual methods
.method public getAllowedHorizontalScrollLength()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method public getAllowedVerticalScrollLength()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method public loadData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .parameter "contactData"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    .line 282
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public moveToYCoordinate(IF)V
    .locals 0
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 217
    invoke-virtual {p0, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 219
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 101
    const v0, 0x7f060075

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 102
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 104
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 105
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    .line 116
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 309
    .local v0, interceptTouch:Z
    if-eqz v0, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    .line 312
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 146
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    if-eqz v0, :cond_0

    .line 147
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 148
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->scrollTo(II)V

    .line 149
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    .line 151
    :cond_0
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 122
    .local v1, screenWidth:I
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 126
    .local v3, tabWidth:I
    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 128
    int-to-float v4, v1

    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 131
    .local v2, tabHeight:I
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 132
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, child:Landroid/view/View;
    mul-int/lit8 v4, v3, 0x2

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 137
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 138
    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v4

    invoke-static {v2, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setMeasuredDimension(II)V

    .line 141
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 177
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onScrollChanged(IIII)V

    .line 178
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    .line 179
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    .line 180
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 303
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 297
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchUp()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v1, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->scrollTo(II)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->moveToYCoordinate(IF)V

    .line 190
    return-void
.end method

.method public restoreCurrentTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 201
    return-void
.end method

.method public restoreYCoordinate()V
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setY(F)V

    .line 210
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tab position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 258
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    .line 267
    :goto_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 268
    return-void

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 262
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 291
    return-void
.end method

.method public storeYCoordinate(IF)V
    .locals 1
    .parameter "tabIndex"
    .parameter "y"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    .line 226
    return-void
.end method
