.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$3;,
        Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field private static final SUBACTIVITY_ACCOUNT_FILTER:I = 0x6

.field private static final SUBACTIVITY_EDIT_CONTACT:I = 0x3

.field private static final SUBACTIVITY_EDIT_GROUP:I = 0x5

.field private static final SUBACTIVITY_NEW_CONTACT:I = 0x2

.field private static final SUBACTIVITY_NEW_GROUP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PeopleActivity"

.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAddGroupImageView:Landroid/view/View;

.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mBrowserView:Landroid/view/View;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactDetailUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentFilterIsValid:Z

.field private mDetailsView:Landroid/view/View;

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFavoritesView:Landroid/view/View;

.field private mFragmentInitialized:Z

.field private mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

.field private mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

.field private mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mOptionsMenuContactsAvailable:Z

.field private mProviderStatus:I

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 120
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 131
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    .line 135
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    .line 138
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    .line 166
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    .line 199
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    .line 200
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 201
    new-instance v0, Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    .line 202
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroupWithAccountDisambiguation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    return-void
.end method

.method private areContactWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 215
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areContactWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 219
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private configureContactListFragment()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 934
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 936
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 937
    .local v0, useTwoPane:Z
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 941
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    .line 942
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 943
    return-void

    .line 937
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 942
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private configureContactListFragmentForRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 911
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 912
    .local v0, contactUri:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 916
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 923
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 925
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 930
    :goto_0
    return-void

    .line 928
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFragments(Z)V
    .locals 6
    .parameter "fromRequest"

    .prologue
    .line 522
    if-eqz p1, :cond_3

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 525
    .local v0, actionCode:I
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    .line 526
    .local v2, searchMode:Z
    const/4 v3, 0x0

    .line 527
    .local v3, tabToOpen:Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    sparse-switch v0, :sswitch_data_0

    .line 553
    :goto_0
    if-eqz v3, :cond_0

    .line 554
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    .line 557
    :cond_0
    if-eqz v1, :cond_1

    .line 558
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 559
    const/4 v2, 0x0

    .line 562
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 563
    const/4 v2, 0x0

    .line 566
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 567
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    .line 570
    .end local v0           #actionCode:I
    .end local v1           #filter:Lcom/android/contacts/list/ContactListFilter;
    .end local v2           #searchMode:Z
    .end local v3           #tabToOpen:Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    .line 571
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureGroupListFragment()V

    .line 573
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 574
    return-void

    .line 529
    .restart local v0       #actionCode:I
    .restart local v1       #filter:Lcom/android/contacts/list/ContactListFilter;
    .restart local v2       #searchMode:Z
    .restart local v3       #tabToOpen:Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    :sswitch_0
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 531
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 532
    goto :goto_0

    .line 534
    :sswitch_1
    const/4 v4, -0x5

    invoke-static {v4}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 536
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 537
    goto :goto_0

    .line 542
    :sswitch_2
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 543
    goto :goto_0

    .line 547
    :sswitch_3
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 548
    goto :goto_0

    .line 550
    :sswitch_4
    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method

.method private configureGroupListFragment()V
    .locals 3

    .prologue
    .line 946
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 947
    .local v0, useTwoPane:Z
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 951
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectionVisible(Z)V

    .line 952
    return-void

    .line 947
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private createNewGroupWithAccountDisambiguation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1472
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 1474
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1477
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1478
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1479
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1505
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1483
    :cond_1
    new-instance v3, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1484
    .local v3, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1485
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1488
    new-instance v1, Lcom/android/contacts/util/AccountsListAdapter;

    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v1, p0, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 1490
    .local v1, adapter:Lcom/android/contacts/util/AccountsListAdapter;
    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1491
    new-instance v4, Lcom/android/contacts/activities/PeopleActivity$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/contacts/activities/PeopleActivity$2;-><init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1503
    invoke-virtual {v3, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1504
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const v2, 0x7f0600ef

    .line 330
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    .line 335
    .local v9, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v11

    .line 338
    .local v11, transaction:Landroid/app/FragmentTransaction;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v10

    .line 339
    .local v10, isUsingTwoPanes:Z
    if-eqz v10, :cond_3

    .line 340
    const v0, 0x7f0600f9

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 341
    const v0, 0x7f0600f4

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 342
    const v0, 0x7f0600f5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 377
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 379
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v11, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 386
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v11, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 387
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v11, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 389
    if-eqz v10, :cond_2

    .line 393
    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    .line 394
    const v0, 0x7f0600f6

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    .line 395
    const v0, 0x7f0600f3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    .line 398
    const v0, 0x7f0600fa

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileFrequentFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    .line 399
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileFrequentFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 400
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileFrequentFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 401
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-virtual {v0, v12}, Lcom/android/contacts/list/ContactTileFrequentFragment;->enableQuickContact(Z)V

    .line 403
    const v0, 0x7f0600f7

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 404
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 406
    const v0, 0x7f0600da

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    .line 407
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    .line 408
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, v12}, Lcom/android/contacts/group/GroupDetailFragment;->setQuickContact(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v11, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v11, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 416
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 420
    :cond_2
    invoke-virtual {v11}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 421
    invoke-virtual {v9}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 424
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v12}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 432
    :goto_1
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, v10}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 433
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 435
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 436
    return-void

    .line 344
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 345
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    .line 346
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 347
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 349
    const-string v7, "tab-pager-favorite"

    .line 350
    .local v7, FAVORITE_TAG:Ljava/lang/String;
    const-string v6, "tab-pager-all"

    .line 351
    .local v6, ALL_TAG:Ljava/lang/String;
    const-string v8, "tab-pager-groups"

    .line 359
    .local v8, GROUPS_TAG:Ljava/lang/String;
    const-string v0, "tab-pager-favorite"

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 361
    const-string v0, "tab-pager-all"

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 363
    const-string v0, "tab-pager-groups"

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 366
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 368
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 369
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 371
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {v11, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 372
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {v11, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 373
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    const-string v1, "tab-pager-groups"

    invoke-virtual {v11, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 428
    .end local v6           #ALL_TAG:Ljava/lang/String;
    .end local v7           #FAVORITE_TAG:Ljava/lang/String;
    .end local v8           #GROUPS_TAG:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    goto/16 :goto_1
.end method

.method private deleteSelection()Z
    .locals 1

    .prologue
    .line 1619
    const/4 v0, 0x0

    return v0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1315
    :cond_0
    return-void
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 1393
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1394
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1395
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1397
    :cond_0
    return-void
.end method

.method private processIntent(Z)Z
    .locals 5
    .parameter "forNewIntent"

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 301
    const-string v2, "PeopleActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-string v2, "PeopleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " processIntent: forNewIntent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    .line 326
    :goto_0
    return v1

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, redirect:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    const/16 v3, 0x8c

    if-ne v2, v3, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 319
    new-instance v0, Landroid/content/Intent;

    .end local v0           #redirect:Landroid/content/Intent;
    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .restart local v0       #redirect:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    const/4 v0, 0x1

    .line 906
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 907
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 908
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactLookupUri"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 589
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 590
    return-void
.end method

.method private setupGroupDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .parameter "groupUri"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 594
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 595
    return-void
.end method

.method private showContactsUnavailableFragmentIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 960
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v4}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v2

    .line 961
    .local v2, providerStatus:I
    iget v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    if-ne v2, v4, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 965
    :cond_0
    iput v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    .line 967
    const v4, 0x7f0600f0

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 968
    .local v0, contactsUnavailableView:Landroid/view/View;
    const v4, 0x7f0600f2

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 970
    .local v1, mainView:Landroid/view/View;
    iget v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    if-nez v4, :cond_3

    .line 971
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 972
    if-eqz v1, :cond_1

    .line 973
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v4, :cond_2

    .line 976
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1013
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0

    .line 982
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactWritableAccountsAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 984
    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    goto :goto_0

    .line 990
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v4, :cond_5

    .line 991
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v4, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 993
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v4, :cond_7

    .line 994
    new-instance v4, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 995
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V

    .line 996
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v5, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    .line 998
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0600f1

    iget-object v6, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1004
    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    if-eqz v1, :cond_6

    .line 1006
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_6
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v3

    .line 1010
    .local v3, tab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    goto :goto_1

    .line 1002
    .end local v3           #tab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsUnavailableFragment;->update()V

    goto :goto_2
.end method

.method private showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v0, -0x1

    .line 724
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    .line 725
    sget-object v1, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 727
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0b0060

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 731
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0b0051

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0052

    goto :goto_1

    .line 735
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0b0050

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFragmentsVisibility()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 632
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v2

    .line 635
    .local v2, tab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 636
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 637
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v5, v6}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 647
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 648
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    .line 649
    sget-object v5, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne v2, v5, :cond_1

    .line 650
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 721
    :cond_1
    :goto_2
    return-void

    .line 640
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v4

    .line 641
    .local v4, wasSearchMode:Z
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v5, v7}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 642
    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v3

    .line 643
    .local v3, tabIndex:I
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 644
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v8, v3, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_3

    .end local v3           #tabIndex:I
    .end local v4           #wasSearchMode:Z
    :cond_4
    move v6, v7

    .line 650
    goto :goto_1

    .line 658
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 659
    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 661
    :cond_6
    sget-object v5, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 679
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 680
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 684
    .local v1, ft:Landroid/app/FragmentTransaction;
    sget-object v5, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 713
    :goto_5
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 714
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 715
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 720
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    goto :goto_2

    .line 663
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 668
    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v8

    if-nez v8, :cond_8

    :goto_6
    invoke-virtual {v5, v6}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    goto :goto_4

    :cond_8
    move v6, v7

    goto :goto_6

    .line 674
    :pswitch_2
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mDetailsView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 686
    .restart local v0       #fragmentManager:Landroid/app/FragmentManager;
    .restart local v1       #ft:Landroid/app/FragmentTransaction;
    :pswitch_3
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 687
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 688
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 689
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 690
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 691
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 692
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_5

    .line 695
    :pswitch_4
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 696
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 697
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 698
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 699
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 700
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 701
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_5

    .line 704
    :pswitch_5
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 705
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 706
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 707
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 708
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 709
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 710
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v5}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_5

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 684
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailFragment()Lcom/android/contacts/detail/ContactDetailFragment;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    return-object v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public getListFragment()Lcom/android/contacts/list/ContactBrowseListFragment;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1318
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return v0

    .line 1322
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupDetailFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1335
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 602
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$Listener$Action:[I

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 606
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 607
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 620
    :goto_0
    return-void

    .line 610
    :pswitch_1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 612
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 1515
    packed-switch p1, :pswitch_data_0

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1517
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1524
    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 1526
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 1527
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadDataAndSetSelectedUri(Landroid/net/Uri;)V

    .line 1529
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 1533
    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_0

    .line 1540
    :pswitch_2
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 1542
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1550
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 1515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 237
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    .line 238
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    if-eqz v0, :cond_2

    .line 240
    check-cast p1, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    .line 241
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    .line 242
    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 243
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V

    .line 244
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 584
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 251
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "ContactsPerf"

    const-string v2, "PeopleActivity.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 262
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 265
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    .line 266
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 267
    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "ContactsPerf"

    const-string v1, "PeopleActivity.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1284
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1308
    :goto_0
    return v2

    .line 1288
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1290
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1291
    .local v1, inflater:Landroid/view/MenuInflater;
    const/high16 v3, 0x7f10

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1296
    const v3, 0x7f060136

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1297
    .local v0, addGroup:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 1298
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    .line 1300
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/PeopleActivity$1;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1306
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAddGroupImageView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1308
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 518
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 519
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1567
    packed-switch p1, :pswitch_data_0

    .line 1583
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 1584
    .local v1, unicodeChar:I
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1585
    new-instance v0, Ljava/lang/String;

    new-array v3, v2, [I

    aput v1, v3, v4

    invoke-direct {v0, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    .line 1586
    .local v0, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1587
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1588
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1595
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #unicodeChar:I
    :cond_0
    :goto_0
    return v2

    .line 1576
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->deleteSelection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1595
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1567
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    .line 275
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 281
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 282
    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    .line 285
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 286
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 1468
    :cond_0
    :goto_0
    return v2

    .line 1404
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1406
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto :goto_0

    .line 1411
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1415
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1417
    .local v1, settingsAreMultiPane:Z
    if-nez v1, :cond_1

    .line 1418
    const-string v3, ":android:show_fragment"

    const-class v4, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const-string v3, ":android:show_fragment_title"

    const v4, 0x7f0b019f

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1423
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1427
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #settingsAreMultiPane:Z
    :sswitch_2
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1432
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSearchRequested()Z

    goto :goto_0

    .line 1436
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1439
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1440
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1442
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1446
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1451
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroupWithAccountDisambiguation()V

    goto :goto_0

    .line 1455
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 1459
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "authorities"

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "com.android.contacts"

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const/high16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1464
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1401
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f06012f -> :sswitch_3
        0x7f060130 -> :sswitch_4
        0x7f060131 -> :sswitch_5
        0x7f060132 -> :sswitch_2
        0x7f060133 -> :sswitch_6
        0x7f060134 -> :sswitch_7
        0x7f060135 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:I

    .line 480
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ProviderStatusLoader;->setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V

    .line 481
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 482
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1340
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 1341
    iget-boolean v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v7, :cond_0

    .line 1389
    :goto_0
    return v6

    .line 1345
    :cond_0
    const v7, 0x7f060130

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1346
    .local v0, addContactMenu:Landroid/view/MenuItem;
    const v7, 0x7f060132

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1348
    .local v2, contactsFilterMenu:Landroid/view/MenuItem;
    const v7, 0x7f060131

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1349
    .local v1, addGroupMenu:Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 1350
    const v7, 0x7f060136

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1353
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v3

    .line 1354
    .local v3, isSearchMode:Z
    if-eqz v3, :cond_3

    .line 1355
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1356
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1357
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1382
    :goto_1
    if-nez v3, :cond_5

    move v4, v5

    .line 1383
    .local v4, showMiscOptions:Z
    :goto_2
    const v7, 0x7f06012f

    invoke-direct {p0, p1, v7, v4}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1384
    const v7, 0x7f060133

    invoke-direct {p0, p1, v7, v4}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1385
    const v7, 0x7f060134

    invoke-direct {p0, p1, v7, v4}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1386
    const v7, 0x7f060135

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->isEmpty(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v5

    :cond_2
    invoke-direct {p0, p1, v7, v6}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    move v6, v5

    .line 1389
    goto :goto_0

    .line 1359
    .end local v4           #showMiscOptions:Z
    :cond_3
    sget-object v7, Lcom/android/contacts/activities/PeopleActivity$3;->$SwitchMap$com$android$contacts$activities$ActionBarAdapter$TabState:[I

    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 1361
    :pswitch_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1362
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1363
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1366
    :pswitch_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1367
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1368
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1372
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1373
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1377
    :goto_3
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1378
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1375
    :cond_4
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_5
    move v4, v6

    .line 1382
    goto :goto_2

    .line 1359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showContactsUnavailableFragmentIfNecessary()V

    .line 957
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusLoader;->setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V

    .line 488
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->showContactsUnavailableFragmentIfNecessary()V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 493
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 499
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    const/4 v1, 0x0

    .line 1624
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1625
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1626
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1634
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1635
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1637
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1509
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1510
    return v1
.end method

.method public onSelectedTabChanged()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 625
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 440
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v1, :cond_2

    .line 441
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    .line 457
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 472
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 473
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    if-nez v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 469
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 470
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    .line 505
    return-void
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1271
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1274
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1275
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1278
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 1279
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 1280
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
