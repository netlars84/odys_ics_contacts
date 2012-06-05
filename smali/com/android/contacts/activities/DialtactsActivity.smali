.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field private static final ACTION_TOUCH_DIALER:Ljava/lang/String; = "com.android.phone.action.TOUCH_DIALER"

.field public static final CALL_ORIGIN_DIALTACTS:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting"

.field public static final EXTRA_CALL_ORIGIN:Ljava/lang/String; = "com.android.phone.CALL_ORIGIN"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final PREF_LAST_MANUALLY_SELECTED_TAB:Ljava/lang/String; = "DialtactsActivity_last_manually_selected_tab"

.field private static final PREF_LAST_MANUALLY_SELECTED_TAB_DEFAULT:I = 0x0

.field private static final SUBACTIVITY_ACCOUNT_FILTER:I = 0x1

.field private static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAB_INDEX_COUNT:I = 0x3

.field private static final TAB_INDEX_DIALER:I = 0x0

.field private static final TAB_INDEX_FAVORITES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DialtactsActivity"


# instance fields
.field private mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private final mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

.field private mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

.field private mDialpadListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

.field private mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    .line 201
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    .line 206
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 230
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 267
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    .line 289
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 299
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 312
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 337
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 366
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 377
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 749
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    .line 756
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$12;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->addSearchFragment()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method private addSearchFragment()V
    .locals 3

    .prologue
    .line 459
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 468
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 462
    .local v0, ft:Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 464
    .local v1, searchFragment:Landroid/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 465
    const v2, 0x7f0600bb

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 466
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 467
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private enterSearchUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 852
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-nez v3, :cond_0

    .line 894
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v3, :cond_1

    .line 862
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 867
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 870
    .local v1, tab:Landroid/app/ActionBar$Tab;
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    .line 871
    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 874
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 876
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 877
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 878
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 879
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 881
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 884
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 885
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 886
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 887
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 888
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 892
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 893
    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    goto :goto_0
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 920
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 923
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 924
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 925
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 929
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 930
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 931
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 933
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 935
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 937
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 940
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 943
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 944
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 945
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 569
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 574
    :cond_0
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 969
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    return-object v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 948
    packed-switch p1, :pswitch_data_0

    .line 956
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 954
    :goto_0
    return-object v0

    .line 952
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    goto :goto_0

    .line 954
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    goto :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 906
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 907
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 910
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 689
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v2

    .line 693
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 694
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 695
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 699
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .parameter "intent"
    .parameter "recentCallsRequest"

    .prologue
    const/4 v3, 0x0

    .line 610
    if-eqz p2, :cond_0

    .line 611
    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 614
    .local v0, callKey:Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 615
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    const/4 v3, 0x1

    .line 623
    .end local v0           #callKey:Z
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 618
    .restart local v0       #callKey:Z
    :catch_0
    move-exception v1

    .line 619
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareSearchView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040040

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, searchViewLayout:Landroid/view/View;
    const v2, 0x7f060083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 474
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 475
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 482
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 483
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0b01a1

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 485
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 494
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, filterOptionView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    .end local v0           #filterOptionView:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 503
    return-void
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 2
    .parameter "position"
    .parameter "visibility"

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 962
    .local v0, fragment:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_0

    .line 963
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    .end local v0           #fragment:Landroid/app/Fragment;
    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    .line 965
    :cond_0
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 633
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 634
    .local v1, recentCallsRequest:Z
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 662
    :goto_0
    return-void

    .line 641
    :cond_0
    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 644
    .local v2, savedTabIndex:I
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    :cond_1
    const/4 v3, 0x0

    .line 652
    .local v3, tabIndex:I
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 653
    .local v0, previousItemIndex:I
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 654
    if-eq v0, v3, :cond_2

    .line 655
    invoke-direct {p0, v0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 657
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 658
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 661
    iput v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    goto :goto_0

    .line 646
    .end local v0           #previousItemIndex:I
    .end local v3           #tabIndex:I
    :cond_3
    if-eqz v1, :cond_4

    .line 647
    const/4 v3, 0x1

    .restart local v3       #tabIndex:I
    goto :goto_1

    .line 649
    .end local v3           #tabIndex:I
    :cond_4
    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .restart local v3       #tabIndex:I
    goto :goto_1
.end method

.method private setupCallLog()V
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 586
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 587
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 588
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 590
    return-void
.end method

.method private setupDialer()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 578
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 579
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 580
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 581
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 582
    return-void
.end method

.method private setupFavorites()V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 594
    .local v0, tab:Landroid/app/ActionBar$Tab;
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 595
    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 596
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 597
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 598
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 729
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 897
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 898
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 899
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    const-string v1, "DialtactsActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    return-void
.end method


# virtual methods
.method public getAndClearFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 712
    .local v0, filterText:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    .line 713
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 977
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 980
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 982
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 5
    .parameter "fragment"

    .prologue
    const/4 v4, 0x1

    .line 509
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 511
    .local v0, currentPosition:I
    :goto_0
    instance-of v2, p1, Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v2, :cond_2

    .line 512
    check-cast p1, Lcom/android/contacts/dialpad/DialpadFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 513
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setListener(Lcom/android/contacts/dialpad/DialpadFragment$Listener;)V

    .line 514
    if-nez v0, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 555
    :cond_0
    :goto_1
    return-void

    .line 509
    .end local v0           #currentPosition:I
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 517
    .restart local v0       #currentPosition:I
    :cond_2
    instance-of v2, p1, Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v2, :cond_3

    .line 518
    check-cast p1, Lcom/android/contacts/calllog/CallLogFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    .line 519
    if-ne v0, v4, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    goto :goto_1

    .line 522
    .restart local p1
    :cond_3
    instance-of v2, p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_4

    .line 523
    check-cast p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    .line 524
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V

    .line 525
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    .line 529
    .restart local p1
    :cond_4
    instance-of v2, p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 530
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .line 531
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    .line 532
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 533
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDarkTheme(Z)V

    .line 534
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 535
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 537
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 546
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 549
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 551
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 552
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 747
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 745
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 389
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 392
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 394
    const v1, 0x7f04003f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->setContentView(I)V

    .line 396
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 397
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 399
    const v1, 0x7f0600bb

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 401
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 402
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 403
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 406
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    .line 407
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    .line 408
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    .line 409
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 410
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 415
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 417
    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 419
    iput v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 422
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 424
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 426
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 428
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 769
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 770
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onDestroy()V

    .line 444
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 445
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 669
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 673
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_3

    .line 678
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_4

    .line 679
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 684
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 685
    return-void

    .line 681
    :cond_4
    const-string v1, "DialtactsActivity"

    const-string v2, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 559
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onPause()V

    .line 561
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 563
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 775
    const v6, 0x7f060142

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 776
    .local v3, searchMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f060144

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 777
    .local v2, filterOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f060145

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 778
    .local v0, addContactOptionMenuItem:Landroid/view/MenuItem;
    const v6, 0x7f060143

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 779
    .local v1, callSettingsMenuItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 780
    .local v5, tab:Landroid/app/ActionBar$Tab;
    iget-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v6, :cond_1

    .line 781
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 782
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 783
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 784
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 786
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 787
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 794
    :goto_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 827
    :goto_1
    return v10

    .line 791
    :cond_0
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 792
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 797
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v6

    if-nez v6, :cond_2

    .line 798
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 801
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    .line 807
    .local v4, showCallSettingsMenu:Z
    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 808
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 809
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 811
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 812
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 819
    :goto_3
    if-eqz v4, :cond_4

    .line 820
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 821
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 803
    .end local v4           #showCallSettingsMenu:Z
    :cond_2
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 804
    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 805
    const/4 v4, 0x1

    .restart local v4       #showCallSettingsMenu:Z
    goto :goto_2

    .line 815
    :cond_3
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 816
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 823
    :cond_4
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onStart()V

    .line 433
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 439
    :cond_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 834
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 846
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 841
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 844
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/activities/TransactionSafeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
