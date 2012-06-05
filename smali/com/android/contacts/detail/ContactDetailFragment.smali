.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field private static final GROUP_MAX_LINES:I = 0xa

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final NOTE_MAX_LINES:I = 0x64

.field private static final POSTAL_ADDRESS_MAX_LINES:I = 0xa

.field private static final SIP_ADDRESS_MAX_LINES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactDetailFragment"

.field private static final WEBSITE_MAX_LINES:I = 0x1


# instance fields
.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaLayer:Landroid/view/View;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumPhoneNumbers:I

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStaticPhoto:Z

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticPhotoView:Landroid/widget/ImageView;

.field private mTouchInterceptLayer:Landroid/view/View;

.field private mTransitionAnimationRequested:Z

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 153
    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 158
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 161
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 239
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addMoreNetworks()V
    .locals 5

    .prologue
    .line 884
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)V

    .line 888
    .local v1, popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    .line 902
    .local v2, popupItemListener:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 910
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->forMoreNetworks(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    return-void
.end method

.method private addNetworks()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 822
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v11, v13}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, attribution:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move v4, v12

    .line 824
    .local v4, hasAttribution:Z
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v9

    .line 828
    .local v9, networksCount:I
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 829
    .local v7, invitableCount:I
    if-nez v4, :cond_2

    if-nez v9, :cond_2

    if-nez v7, :cond_2

    .line 874
    :cond_0
    :goto_1
    return-void

    .line 823
    .end local v4           #hasAttribution:Z
    .end local v7           #invitableCount:I
    .end local v9           #networksCount:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 834
    .restart local v4       #hasAttribution:Z
    .restart local v7       #invitableCount:I
    .restart local v9       #networksCount:I
    :cond_2
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v13, 0x7f0b0160

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 835
    .local v8, networkKindTitle:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    if-eqz v4, :cond_3

    .line 839
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 840
    .local v3, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v8, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 841
    iput-object v1, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 842
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    if-lez v9, :cond_3

    .line 846
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v13}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .end local v3           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 854
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v13, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->fromAccountType(Landroid/content/Context;Lcom/android/contacts/model/AccountType;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 858
    .local v2, detailEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    new-instance v10, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v10}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    .line 859
    .local v10, separatorEntry:Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    invoke-virtual {v10, v12}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    .line 860
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {v2, v12}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    .line 864
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 868
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v2           #detailEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #separatorEntry:Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    :cond_5
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 871
    if-lez v7, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_1
.end method

.method private addPhoneticName()V
    .locals 6

    .prologue
    .line 799
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, phoneticName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0b015f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, phoneticNameKindTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 810
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 811
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 812
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 965
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-object v1

    .line 968
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 969
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 50

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 543
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 544
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v19

    .line 549
    .local v19, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v3, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v28, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Entity;

    .line 555
    .local v25, entity:Landroid/content/Entity;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 556
    .local v24, entValues:Landroid/content/ContentValues;
    const-string v3, "account_type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 557
    .local v18, accountType:Ljava/lang/String;
    const-string v3, "data_set"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 558
    .local v21, dataSet:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    .line 560
    .local v40, rawContactId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v48

    .line 566
    .local v48, type:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/Entity$NamedContentValues;

    .line 567
    .local v46, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v46

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 568
    .local v8, entryValues:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    const-string v3, "_id"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 571
    .local v6, dataId:J
    const-string v3, "mimetype"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 574
    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 575
    const-string v3, "data1"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 576
    .local v27, groupId:Ljava/lang/Long;
    if-eqz v27, :cond_4

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3, v9, v10}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    goto :goto_1

    .line 582
    .end local v27           #groupId:Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    .line 584
    .local v5, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v5, :cond_4

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v10}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v10

    invoke-static/range {v3 .. v11}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v26

    .line 590
    .local v26, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v29, 0x1

    .line 591
    .local v29, hasData:Z
    :goto_2
    const-string v3, "is_super_primary"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 592
    .local v47, superPrimary:Ljava/lang/Integer;
    if-eqz v47, :cond_8

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    const/16 v36, 0x1

    .line 594
    .local v36, isSuperPrimary:Z
    :goto_3
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 596
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v29, :cond_e

    .line 598
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    .line 599
    const-string v3, "normalized_number"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 601
    .local v39, phoneNumberE164:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-static {v3, v0, v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 603
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v3, :cond_9

    new-instance v38, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v9, "tel"

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v38

    invoke-direct {v0, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    .local v38, phoneIntent:Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_a

    new-instance v44, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v9, "smsto"

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    .local v44, smsIntent:Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_b

    .line 610
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 611
    move-object/from16 v0, v44

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 612
    iget v3, v5, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 613
    iget v3, v5, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 623
    :goto_6
    if-eqz v36, :cond_6

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 625
    :cond_6
    move/from16 v0, v36

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 590
    .end local v29           #hasData:Z
    .end local v36           #isSuperPrimary:Z
    .end local v38           #phoneIntent:Landroid/content/Intent;
    .end local v39           #phoneNumberE164:Ljava/lang/String;
    .end local v44           #smsIntent:Landroid/content/Intent;
    .end local v47           #superPrimary:Ljava/lang/Integer;
    :cond_7
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 592
    .restart local v29       #hasData:Z
    .restart local v47       #superPrimary:Ljava/lang/Integer;
    :cond_8
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 603
    .restart local v36       #isSuperPrimary:Z
    .restart local v39       #phoneNumberE164:Ljava/lang/String;
    :cond_9
    const/16 v38, 0x0

    goto :goto_4

    .line 605
    .restart local v38       #phoneIntent:Landroid/content/Intent;
    :cond_a
    const/16 v44, 0x0

    goto :goto_5

    .line 614
    .restart local v44       #smsIntent:Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v3, :cond_c

    .line 615
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_6

    .line 616
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_d

    .line 617
    move-object/from16 v0, v44

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_6

    .line 619
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_6

    .line 627
    .end local v38           #phoneIntent:Landroid/content/Intent;
    .end local v39           #phoneNumberE164:Ljava/lang/String;
    .end local v44           #smsIntent:Landroid/content/Intent;
    :cond_e
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v29, :cond_f

    .line 629
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    const-string v10, "mailto"

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 631
    move/from16 v0, v36

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v26

    iget-wide v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/util/DataStatus;

    .line 636
    .local v45, status:Lcom/android/contacts/util/DataStatus;
    if-eqz v45, :cond_4

    .line 637
    const-string v34, "vnd.android.cursor.item/im"

    .line 638
    .local v34, imMime:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    .line 640
    .local v11, imKind:Lcom/android/contacts/model/DataKind;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v10, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v16

    move-wide v12, v6

    move-object v14, v8

    invoke-static/range {v9 .. v17}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v33

    .line 643
    .local v33, imEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-static {v3, v0, v8}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 644
    const/4 v3, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 647
    .end local v11           #imKind:Lcom/android/contacts/model/DataKind;
    .end local v33           #imEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v34           #imMime:Ljava/lang/String;
    .end local v45           #status:Lcom/android/contacts/util/DataStatus;
    :cond_f
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v29, :cond_10

    .line 649
    const/16 v3, 0xa

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 650
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 652
    :cond_10
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v29, :cond_12

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v3, v0, v8}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v26

    iget-wide v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/util/DataStatus;

    .line 658
    .restart local v45       #status:Lcom/android/contacts/util/DataStatus;
    if-eqz v45, :cond_11

    .line 659
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 661
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 662
    .end local v45           #status:Lcom/android/contacts/util/DataStatus;
    :cond_12
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 665
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v29, :cond_15

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getNameRawContactId()J

    move-result-wide v9

    cmp-long v3, v9, v40

    if-nez v3, :cond_13

    const/16 v35, 0x1

    .line 670
    .local v35, isNameRawContact:Z
    :goto_7
    if-eqz v35, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v3

    const/16 v9, 0x23

    if-ne v3, v9, :cond_14

    const/16 v22, 0x1

    .line 674
    .local v22, duplicatesTitle:Z
    :goto_8
    if-nez v22, :cond_4

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 667
    .end local v22           #duplicatesTitle:Z
    .end local v35           #isNameRawContact:Z
    :cond_13
    const/16 v35, 0x0

    goto :goto_7

    .line 670
    .restart local v35       #isNameRawContact:Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_8

    .line 678
    .end local v35           #isNameRawContact:Z
    :cond_15
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v29, :cond_16

    .line 680
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 681
    const/16 v3, 0x64

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 683
    :cond_16
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v29, :cond_17

    .line 685
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 686
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 688
    :try_start_0
    new-instance v49, Landroid/net/WebAddress;

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 689
    .local v49, webAddress:Landroid/net/WebAddress;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual/range {v49 .. v49}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v49           #webAddress:Landroid/net/WebAddress;
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 691
    :catch_0
    move-exception v23

    .line 692
    .local v23, e:Landroid/net/ParseException;
    const-string v3, "ContactDetailFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t parse website: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 695
    .end local v23           #e:Landroid/net/ParseException;
    :cond_17
    const-string v3, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v29, :cond_19

    .line 697
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 698
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 699
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v3, :cond_18

    .line 700
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL_PRIVILEGED"

    const-string v10, "sip"

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 705
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 703
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_a

    .line 712
    :cond_19
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v29, :cond_1a

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 714
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 716
    :cond_1a
    const-string v3, "vnd.android.cursor.item/relation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v29, :cond_1b

    .line 717
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 718
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v9, "query"

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v9, "vnd.android.cursor.dir/contact"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 723
    :cond_1b
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 724
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    iget-object v3, v5, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v3, :cond_1c

    .line 727
    iget-object v3, v5, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-interface {v3, v9, v8}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 728
    .local v20, body:Ljava/lang/CharSequence;
    if-nez v20, :cond_1d

    const/4 v3, 0x0

    :goto_b
    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 731
    .end local v20           #body:Ljava/lang/CharSequence;
    :cond_1c
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    .line 736
    .local v37, listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 728
    .end local v37           #listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .restart local v20       #body:Ljava/lang/CharSequence;
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 739
    .end local v20           #body:Ljava/lang/CharSequence;
    :cond_1e
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .restart local v37       #listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 748
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #kind:Lcom/android/contacts/model/DataKind;
    .end local v6           #dataId:J
    .end local v8           #entryValues:Landroid/content/ContentValues;
    .end local v18           #accountType:Ljava/lang/String;
    .end local v21           #dataSet:Ljava/lang/String;
    .end local v24           #entValues:Landroid/content/ContentValues;
    .end local v25           #entity:Landroid/content/Entity;
    .end local v26           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v29           #hasData:Z
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v36           #isSuperPrimary:Z
    .end local v37           #listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .end local v40           #rawContactId:J
    .end local v46           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v47           #superPrimary:Ljava/lang/Integer;
    .end local v48           #type:Lcom/android/contacts/model/AccountType;
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 749
    new-instance v26, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct/range {v26 .. v26}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 750
    .restart local v26       #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 751
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v42, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 753
    .local v43, size:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_c
    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_21

    .line 754
    if-eqz v30, :cond_20

    .line 755
    const-string v3, ", "

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    :cond_20
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    add-int/lit8 v30, v30, 0x1

    goto :goto_c

    .line 759
    :cond_21
    const-string v3, "mimetype"

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0104

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 761
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 762
    const/16 v3, 0xa

    move-object/from16 v0, v26

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "context"
    .parameter "entry"
    .parameter "values"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x5

    .line 978
    const-string v8, "vnd.android.cursor.item/email_v2"

    const-string v10, "mimetype"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 980
    .local v6, isEmail:Z
    if-nez v6, :cond_1

    invoke-static {p2}, Lcom/android/contacts/detail/ContactDetailFragment;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    if-eqz v6, :cond_2

    const-string v8, "data1"

    :goto_1
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 985
    .local v3, data:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 989
    if-eqz v6, :cond_3

    move v7, v9

    .line 991
    .local v7, protocol:I
    :goto_2
    if-ne v7, v9, :cond_7

    .line 992
    const-string v8, "chat_capability"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 993
    .local v2, chatCapabilityObj:Ljava/lang/Integer;
    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 994
    .local v1, chatCapability:I
    :goto_3
    iput v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 995
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 997
    and-int/lit8 v8, v1, 0x4

    if-eqz v8, :cond_5

    .line 998
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1000
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto :goto_0

    .line 984
    .end local v1           #chatCapability:I
    .end local v2           #chatCapabilityObj:Ljava/lang/Integer;
    .end local v3           #data:Ljava/lang/String;
    .end local v7           #protocol:I
    :cond_2
    const-string v8, "data1"

    goto :goto_1

    .line 989
    .restart local v3       #data:Ljava/lang/String;
    :cond_3
    const-string v8, "data5"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    .line 993
    .restart local v2       #chatCapabilityObj:Ljava/lang/Integer;
    .restart local v7       #protocol:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 1002
    .restart local v1       #chatCapability:I
    :cond_5
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_6

    .line 1004
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1006
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?call"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1009
    :cond_6
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "xmpp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1014
    .end local v1           #chatCapability:I
    .end local v2           #chatCapabilityObj:Ljava/lang/Integer;
    :cond_7
    const-string v8, "data6"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    .local v4, host:Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 1018
    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v4

    .line 1021
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1022
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, authority:Ljava/lang/String;
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "imto"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1025
    .local v5, imUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1856
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1857
    .local v0, clearIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1858
    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    .prologue
    .line 499
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 501
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .local v0, arr$:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 502
    .local v1, fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 509
    .end local v1           #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    .line 510
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    :goto_1
    return-void

    .line 501
    .restart local v1       #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v1           #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 10
    .parameter "viewEntryPosition"

    .prologue
    const/4 v9, 0x0

    .line 1862
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1863
    .local v3, detailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v5, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1866
    .local v5, textToCopy:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1879
    :goto_0
    return-void

    .line 1869
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1871
    .local v2, clipboardManager:Landroid/content/ClipboardManager;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    aput-object v7, v4, v9

    .line 1872
    .local v4, mimeTypes:[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 1873
    .local v1, clipDataItem:Landroid/content/ClipData$Item;
    new-instance v0, Landroid/content/ClipData;

    iget-object v7, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-direct {v0, v7, v4, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 1874
    .local v0, cd:Landroid/content/ClipData;
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1877
    const v7, 0x7f0b01b5

    invoke-virtual {p0, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1878
    .local v6, toastText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1775
    :cond_0
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 922
    .local v0, count:I
    if-lez v0, :cond_0

    .line 923
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 924
    .local v2, kind:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v2           #kind:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 930
    if-eqz v1, :cond_1

    .line 931
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 938
    return-void
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    const-wide/16 v4, -0x1

    .line 519
    const-wide/16 v0, -0x1

    .line 520
    .local v0, defaultGroupId:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    .line 521
    .local v2, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    .line 527
    .end local v0           #defaultGroupId:J
    .end local v2           #group:Lcom/android/contacts/GroupMetaData;
    :cond_1
    return-wide v0

    .line 524
    .restart local v0       #defaultGroupId:J
    .restart local v2       #group:Lcom/android/contacts/GroupMetaData;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .parameter
    .parameter
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, groupMetaData:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 951
    .local v0, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 952
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isFavorites()Z

    move-result v3

    if-nez v3, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 955
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1031
    const-string v3, "data5"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    .local v1, protocolString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1040
    :goto_0
    return v2

    .line 1036
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    const/4 v2, 0x1

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private setDefaultContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1852
    .local v0, setIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1853
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    .line 777
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 778
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 779
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 780
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 781
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 782
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 784
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    .line 786
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 787
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 788
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 790
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 791
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 792
    return-void
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .parameter "anchorView"
    .parameter "adapter"
    .parameter "onItemClickListener"

    .prologue
    .line 1048
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1049
    .local v0, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1051
    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1052
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1056
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$4;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1064
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1065
    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 427
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    if-eqz v0, :cond_3

    .line 428
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/contacts/widget/TransitionAnimationView;->startAnimation(Landroid/view/View;Z)V

    .line 429
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 435
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 428
    goto :goto_1

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 445
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 450
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v0, :cond_a

    .line 451
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    .line 459
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 462
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 466
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 468
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 469
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_c

    :goto_5
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 472
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    .line 474
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v0, :cond_7

    .line 475
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {v0, p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 476
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_8

    .line 481
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 482
    iput-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 489
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    .line 491
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 442
    goto/16 :goto_2

    .line 454
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v0, v2

    .line 468
    goto :goto_4

    :cond_c
    move v1, v2

    .line 469
    goto :goto_5
.end method

.method public disableTouchInterceptor()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    :cond_0
    return-void
.end method

.method protected getContactData()Lcom/android/contacts/ContactLoader$Result;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method protected getListener()Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleKeyDown(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1883
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v4, v5

    .line 1915
    :goto_0
    return v4

    .line 1886
    :pswitch_0
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1888
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1896
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1897
    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1898
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v6, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1899
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    if-ne v6, v7, :cond_3

    .line 1901
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1904
    .end local v0           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v6, :cond_3

    .line 1906
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1908
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    move v4, v5

    .line 1911
    goto :goto_0

    .line 1892
    .end local v1           #index:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1883
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 1768
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1769
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 1764
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 272
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 273
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    .line 275
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1829
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    .local v1, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1846
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown menu option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1830
    .end local v1           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_0
    move-exception v0

    .line 1831
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ContactDetailFragment"

    const-string v3, "bad menuInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1832
    const/4 v2, 0x0

    .line 1844
    .end local v0           #e:Ljava/lang/ClassCastException;
    :goto_0
    return v2

    .line 1837
    .restart local v1       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    goto :goto_0

    .line 1840
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    goto :goto_0

    .line 1843
    :pswitch_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    goto :goto_0

    .line 1835
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 244
    if-eqz p1, :cond_0

    .line 245
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 246
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 248
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 1794
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 1796
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1797
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1799
    .local v2, selectedEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1800
    const v4, 0x7f0b01b2

    invoke-virtual {p0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1803
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1806
    .local v3, selectedMimeType:Ljava/lang/String;
    const/4 v1, 0x1

    .line 1809
    .local v1, isUniqueMimeType:Z
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1810
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 1816
    :cond_0
    :goto_0
    iget-boolean v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v4, :cond_3

    .line 1817
    const/4 v4, 0x1

    const v5, 0x7f0b01b4

    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1823
    :cond_1
    :goto_1
    return-void

    .line 1811
    :cond_2
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1812
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto :goto_0

    .line 1819
    :cond_3
    if-nez v1, :cond_1

    .line 1820
    const/4 v4, 0x2

    const v5, 0x7f0b01b3

    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 279
    const v0, 0x7f040017

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 281
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    .line 285
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 286
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 287
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 292
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 298
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f060066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 299
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1786
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 1788
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1789
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 262
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 267
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 416
    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    :cond_0
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 329
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter "lookupUri"
    .parameter "result"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 385
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 386
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 387
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 323
    return-void
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0
    .parameter "showPhoto"

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 377
    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 365
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    .line 381
    return-void
.end method
