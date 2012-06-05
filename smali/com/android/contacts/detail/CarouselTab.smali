.class public Lcom/android/contacts/detail/CarouselTab;
.super Landroid/widget/RelativeLayout;
.source "CarouselTab.java"

# interfaces
.implements Lcom/android/contacts/detail/ViewOverlay;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaLayer:Landroid/view/View;

.field private mLabelView:Landroid/widget/TextView;

.field private mTouchInterceptLayer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/CarouselTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public disableTouchInterceptor()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 58
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mAlphaLayer:Landroid/view/View;

    .line 59
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    .line 60
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 91
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public showDeselectedState()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    return-void
.end method

.method public showSelectedState()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    return-void
.end method
