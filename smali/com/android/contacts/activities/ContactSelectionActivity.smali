.class public Lcom/android/contacts/activities/ContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;,
        Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final FOCUS_DELAY:I = 0xc8

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final SUBACTIVITY_ADD_TO_EXISTING_CONTACT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactSelectionActivity"


# instance fields
.field private mActionCode:I

.field private mCreateNewContactButton:Landroid/view/View;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 92
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactSelectionActivity;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    return-void
.end method

.method private configureActivityTitle()V
    .locals 3

    .prologue
    const v2, 0x7f0b0011

    .line 253
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 259
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 266
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 261
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 271
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 276
    :sswitch_3
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 281
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 286
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 291
    :sswitch_6
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 296
    :sswitch_7
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 301
    :sswitch_8
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setTitle(I)V

    goto :goto_0

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x46 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method private prepareSearchViewAndActionBar()V
    .locals 9

    .prologue
    const v8, 0x7f0b01a1

    const/16 v5, 0x8

    const v7, 0x7f060083

    const/4 v6, 0x1

    .line 158
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 162
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 164
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 172
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 173
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, searchViewOnLayout:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 176
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, searchViewContainer:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 185
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 190
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 191
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 195
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 196
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 197
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 216
    .end local v1           #searchViewContainer:Landroid/view/View;
    .end local v2           #searchViewOnLayout:Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 200
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 206
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 207
    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/activities/ContactSelectionActivity$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/ContactSelectionActivity$1;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private shouldShowCreateNewContactButton()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 580
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 582
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 583
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    const-string v1, "ContactSelectionActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    return-void
.end method

.method private startCreateNewContactActivity()V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 576
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    .line 577
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 311
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 374
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :sswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 314
    .local v0, fragment:Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setEditMode(Z)V

    .line 315
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 316
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 377
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 380
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060084

    iget-object v3, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 383
    return-void

    .line 321
    :sswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 322
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->shouldIncludeProfile()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setIncludeProfile(Z)V

    .line 323
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 328
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 329
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 334
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 335
    .restart local v0       #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setShortcutRequested(Z)V

    .line 336
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 341
    .end local v0           #fragment:Lcom/android/contacts/list/ContactPickerFragment;
    :sswitch_4
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 342
    .local v0, fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 347
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_5
    new-instance v1, Lcom/android/contacts/list/EmailAddressPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 352
    :sswitch_6
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 353
    .restart local v0       #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 355
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 360
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_7
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 361
    .restart local v0       #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setShortcutAction(Ljava/lang/String;)V

    .line 363
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 368
    .end local v0           #fragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    :sswitch_8
    new-instance v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;-><init>()V

    .line 369
    .local v0, fragment:Lcom/android/contacts/list/PostalAddressPickerFragment;
    iput-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_0

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0x46 -> :sswitch_2
        0x50 -> :sswitch_0
        0x5a -> :sswitch_4
        0x64 -> :sswitch_8
        0x69 -> :sswitch_5
        0x6e -> :sswitch_3
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 592
    if-nez p1, :cond_1

    .line 593
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 594
    if-eqz p3, :cond_0

    .line 595
    invoke-virtual {p0, p3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 600
    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 97
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->setupActionListener()V

    .line 101
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 568
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x7f060085
        :pswitch_0
    .end packed-switch
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 535
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 538
    :cond_0
    return v2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 515
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 519
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 113
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, redirect:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureActivityTitle()V

    .line 129
    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setContentView(I)V

    .line 131
    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 132
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->configureListFragment()V

    .line 136
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->prepareSearchViewAndActionBar()V

    .line 138
    const v1, 0x7f060085

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->shouldShowCreateNewContactButton()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->shouldShowCreateNewContactButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mCreateNewContactButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 225
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 227
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 545
    :pswitch_0
    if-eqz p2, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->showInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x7f060083
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 235
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0

    .line 239
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V

    goto :goto_0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f06013d -> :sswitch_1
    .end sparse-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "newText"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    const-string v0, "actionCode"

    iget v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 560
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 562
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/ContactPickerFragment;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 401
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PhoneNumberPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/PostalAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/EmailAddressPickerFragment;

    new-instance v1, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/activities/ContactSelectionActivity$EmailAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V

    goto :goto_0

    .line 399
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 501
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 505
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 508
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 510
    return-void
.end method
