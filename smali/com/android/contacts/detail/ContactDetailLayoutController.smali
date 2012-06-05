.class public Lcom/android/contacts/detail/ContactDetailLayoutController;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailLayoutController$4;,
        Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;,
        Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT_HAS_UPDATES:Ljava/lang/String; = "contactHasUpdates"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_CURRENT_PAGE_INDEX:Ljava/lang/String; = "currentPageIndex"

.field private static final TAB_INDEX_DETAIL:I = 0x0

.field private static final TAB_INDEX_UPDATES:I = 0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactHasUpdates:Z

.field private mContactUri:Landroid/net/Uri;

.field private mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mDetailFragmentView:Landroid/view/View;

.field private final mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

.field private final mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTabCarouselIsAnimating:Z

.field private final mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private mUpdatesFragmentView:Landroid/view/View;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

.field private mViewPagerState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 2
    .parameter "activity"
    .parameter "savedState"
    .parameter "fragmentManager"
    .parameter "viewContainer"
    .parameter "contactDetailFragmentListener"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 540
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$2;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 563
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$3;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 95
    if-nez p3, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 103
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 104
    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 107
    const v0, 0x7f060060

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 108
    const v0, 0x7f060061

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .line 111
    const v0, 0x7f060062

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    .line 115
    const v0, 0x7f06005c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 116
    const v0, 0x7f060063

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->VIEW_PAGER_AND_TAB_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    .line 126
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->initialize(Landroid/os/Bundle;)V

    .line 127
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->FRAGMENT_CAROUSEL:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    :goto_1
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->TWO_COLUMN:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    return v0
.end method

.method private getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 409
    :goto_0
    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->getCurrentPage()I

    move-result v0

    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffsetOfFirstItemInList(I)I
    .locals 1
    .parameter "currentPageIndex"

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstListItemOffset()I

    move-result v0

    .line 531
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getFirstListItemOffset()I

    move-result v0

    goto :goto_0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    const v8, 0x7f060063

    const v7, 0x7f06005c

    const/4 v6, 0x0

    .line 130
    const/4 v1, 0x1

    .line 131
    .local v1, fragmentsAddedToFragmentManager:Z
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 133
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 139
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 141
    new-instance v3, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 142
    const/4 v1, 0x0

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 146
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v3, v4}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, currentPageIndex:I
    if-eqz p1, :cond_1

    .line 151
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 152
    const-string v3, "contactHasUpdates"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 153
    const-string v3, "currentPageIndex"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    :cond_1
    sget-object v3, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 229
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 230
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v3, :cond_6

    .line 231
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates()V

    .line 236
    :cond_3
    :goto_1
    return-void

    .line 162
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040013

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    .line 164
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040020

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    .line 167
    new-instance v3, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    .line 168
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setAboutFragmentView(Landroid/view/View;)V

    .line 169
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->setUpdatesFragmentView(Landroid/view/View;)V

    .line 171
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 172
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 173
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 174
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 176
    if-nez v1, :cond_4

    .line 177
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 178
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 180
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 182
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 183
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 186
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V

    .line 187
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreCurrentTab(I)V

    .line 188
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    invoke-direct {v4, p0, v6}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 190
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 192
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 196
    :pswitch_1
    if-nez v1, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 198
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 200
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 202
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 203
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto/16 :goto_0

    .line 211
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :pswitch_2
    if-nez v1, :cond_5

    .line 212
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 213
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v4, "view-pager-about-fragment"

    invoke-virtual {v2, v7, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 215
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v4, "view-pager-updates-fragment"

    invoke-virtual {v2, v8, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 217
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 218
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 221
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragmentView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setFragmentViews(Landroid/view/View;Landroid/view/View;)V

    .line 222
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setFragments(Lcom/android/contacts/detail/ViewOverlay;Lcom/android/contacts/detail/ViewOverlay;)V

    .line 223
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 233
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto/16 :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetFragments()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->resetAdapter()V

    .line 384
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->resetAdapter()V

    .line 385
    return-void
.end method

.method private resetTabCarousel()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->reset()V

    .line 376
    return-void
.end method

.method private resetViewPager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 380
    return-void
.end method

.method private showContactWithUpdates()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v4, :cond_0

    .line 327
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 286
    .local v1, previousContactUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 287
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 289
    .local v0, isDifferentContact:Z
    :goto_1
    sget-object v4, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 318
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LayoutMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #isDifferentContact:Z
    :cond_1
    move v0, v3

    .line 287
    goto :goto_1

    .line 293
    .restart local v0       #isDifferentContact:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 322
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetFragments()V

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    .line 326
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4, v5}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 301
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v4}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->restoreYCoordinate()V

    .line 302
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v4, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 304
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 306
    if-eqz v0, :cond_2

    .line 307
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetViewPager()V

    .line 308
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetTabCarousel()V

    goto :goto_2

    .line 314
    :pswitch_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showContactWithoutUpdates()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v4, :cond_0

    .line 372
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 339
    .local v1, previousContactUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    .line 340
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 342
    .local v0, isDifferentContact:Z
    :goto_1
    sget-object v4, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 364
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LayoutMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #isDifferentContact:Z
    :cond_1
    move v0, v3

    .line 340
    goto :goto_1

    .line 345
    .restart local v0       #isDifferentContact:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 347
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_2
    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->resetFragments()V

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v2, v6}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 359
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 360
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    goto :goto_2

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private syncScrollStateBetweenLists(I)V
    .locals 2
    .parameter "currentPageIndex"

    .prologue
    .line 520
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->requestToMoveToOffset(I)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->requestToMoveToOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    .locals 2

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid current item for ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 392
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 413
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    const-string v0, "contactHasUpdates"

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    const-string v0, "currentPageIndex"

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    return-void
.end method

.method public setContactData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 240
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 241
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithUpdates()V

    .line 246
    :goto_1
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactWithoutUpdates()V

    goto :goto_1
.end method

.method public showEmptyState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 249
    sget-object v0, Lcom/android/contacts/detail/ContactDetailLayoutController$4;->$SwitchMap$com$android$contacts$detail$ContactDetailLayoutController$LayoutMode:[I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mLayoutMode:Lcom/android/contacts/detail/ContactDetailLayoutController$LayoutMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->setCurrentPage(I)V

    .line 252
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentCarousel:Lcom/android/contacts/detail/ContactDetailFragmentCarousel;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragmentCarousel;->enableSwipe(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 274
    :goto_0
    return-void

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setShowStaticPhoto(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 265
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->loadData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 266
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->enableSwipe(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
