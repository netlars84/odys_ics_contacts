.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;,
        Lcom/android/contacts/editor/ContactEditorFragment$Status;,
        Lcom/android/contacts/editor/ContactEditorFragment$SaveMode;
    }
.end annotation


# static fields
.field public static final INTENT_EXTRA_ADD_TO_DEFAULT_DIRECTORY:Ljava/lang/String; = "addToDefaultDirectory"

.field public static final INTENT_EXTRA_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_CONTACT_ID_FOR_JOIN:Ljava/lang/String; = "contactidforjoin"

.field private static final KEY_CONTACT_WRITABLE_FOR_JOIN:Ljava/lang/String; = "contactwritableforjoin"

.field private static final KEY_CURRENT_PHOTO_FILE:Ljava/lang/String; = "currentphotofile"

.field private static final KEY_EDIT_STATE:Ljava/lang/String; = "state"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_IS_USER_PROFILE:Ljava/lang/String; = "isUserProfile"

.field private static final KEY_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field private static final KEY_RAW_CONTACT_ID_REQUESTING_PHOTO:Ljava/lang/String; = "photorequester"

.field private static final KEY_SHOW_JOIN_SUGGESTIONS:Ljava/lang/String; = "showJoinSuggestions"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final KEY_VIEW_ID_GENERATOR:Ljava/lang/String; = "viewidgenerator"

.field private static final LOADER_DATA:I = 0x1

.field private static final LOADER_GROUPS:I = 0x2

.field private static final PHOTO_DIR:Ljava/io/File; = null

.field private static final REQUEST_CODE_ACCOUNTS_CHANGED:I = 0x3

.field private static final REQUEST_CODE_CAMERA_WITH_DATA:I = 0x1

.field private static final REQUEST_CODE_JOIN:I = 0x0

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x2

.field public static final SAVE_MODE_EXTRA_KEY:Ljava/lang/String; = "saveMode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAutoAddToDefaultGroup:Z

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

.field private mContactIdForJoin:J

.field private mContactWritableForJoin:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoFile:Ljava/io/File;

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private mEnabled:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsUserProfile:Z

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mNewLocalProfile:Z

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoPickSize:I

.field private mRawContactIdRequestingPhoto:J

.field private mRawContactIdRequestingPhotoAfterLoad:J

.field private mRequestFocus:Z

.field private mState:Lcom/android/contacts/model/EntityDeltaList;

.field private mStatus:I

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const-class v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 302
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 199
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    .line 200
    iput-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 201
    iput-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    .line 203
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    .line 284
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 299
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 300
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 1701
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1743
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 303
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$2100()Ljava/io/File;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->PHOTO_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 7
    .parameter "currentState"
    .parameter "editor"

    .prologue
    .line 818
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 819
    .local v3, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    new-instance v2, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data_set"

    invoke-virtual {v3, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .local v2, currentAccount:Lcom/android/contacts/model/AccountWithDataSet;
    const v4, 0x7f0600c7

    invoke-virtual {p2, v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, accountView:Landroid/view/View;
    const v4, 0x7f0600c6

    invoke-virtual {p2, v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 825
    .local v1, anchorView:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/model/EntityDelta;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    return-void
.end method

.method private bindEditors()V
    .locals 26

    .prologue
    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 692
    .local v12, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    .line 693
    .local v5, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v15

    .line 694
    .local v15, numRawContacts:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v15, :cond_6

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/EntityDelta;

    .line 697
    .local v10, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v10}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v21

    .line 698
    .local v21, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v22

    if-nez v22, :cond_1

    .line 694
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 700
    :cond_1
    const-string v22, "account_type"

    invoke-virtual/range {v21 .. v22}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 701
    .local v4, accountType:Ljava/lang/String;
    const-string v22, "data_set"

    invoke-virtual/range {v21 .. v22}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 702
    .local v8, dataSet:Ljava/lang/String;
    invoke-virtual {v5, v4, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v20

    .line 703
    .local v20, type:Lcom/android/contacts/model/AccountType;
    const-string v22, "_id"

    invoke-virtual/range {v21 .. v22}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 706
    .local v18, rawContactId:J
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v22

    if-nez v22, :cond_3

    .line 707
    const v22, 0x7f04007e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .local v9, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    move-object/from16 v22, v9

    .line 709
    check-cast v22, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V

    .line 714
    :goto_2
    const-string v22, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_5

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v6

    .line 717
    .local v6, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/model/EntityDelta;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    .line 726
    .end local v6           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v9, v10, v0, v1, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 732
    invoke-virtual {v9}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v22

    new-instance v23, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;ZLcom/android/contacts/editor/ContactEditorFragment$1;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 734
    instance-of v0, v9, Lcom/android/contacts/editor/RawContactEditorView;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v17, v9

    .line 735
    check-cast v17, Lcom/android/contacts/editor/RawContactEditorView;

    .line 736
    .local v17, rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v13, Lcom/android/contacts/editor/ContactEditorFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 750
    .local v13, listener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v14

    .line 751
    .local v14, nameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 752
    invoke-virtual {v14}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocus()Z

    .line 753
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 755
    :cond_2
    invoke-virtual {v14, v13}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 757
    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v16

    .line 759
    .local v16, phoneticNameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    .line 762
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-nez v22, :cond_0

    .line 763
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V

    goto/16 :goto_1

    .line 711
    .end local v9           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v13           #listener:Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v14           #nameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v16           #phoneticNameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v17           #rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;
    :cond_3
    const v22, 0x7f04007d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/RawContactEditorView;

    .restart local v9       #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    goto/16 :goto_2

    .line 720
    .restart local v6       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_3

    .line 723
    .end local v6           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_3

    .line 768
    .end local v4           #accountType:Ljava/lang/String;
    .end local v8           #dataSet:Ljava/lang/String;
    .end local v9           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v10           #entity:Lcom/android/contacts/model/EntityDelta;
    .end local v18           #rawContactId:J
    .end local v20           #type:Lcom/android/contacts/model/AccountType;
    .end local v21           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 778
    .local v7, activity:Landroid/app/Activity;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 780
    :cond_7
    return-void
.end method

.method private bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    .line 481
    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 483
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 484
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 485
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 488
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 489
    const/4 v2, 0x0

    .line 491
    .local v2, localProfileExists:Z
    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v5, :cond_2

    .line 492
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 494
    .local v3, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    .line 496
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 497
    const/4 v2, 0x1

    goto :goto_0

    .line 501
    .end local v3           #state:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    if-nez v2, :cond_2

    .line 502
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 504
    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 505
    const-string v5, "data_set"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 506
    new-instance v1, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 507
    .local v1, insert:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    .line 508
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #insert:Lcom/android/contacts/model/EntityDelta;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2
    iput-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 513
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 514
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;)V
    .locals 1
    .parameter "account"
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 630
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    .line 631
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 5
    .parameter "newAccount"
    .parameter "newAccountType"
    .parameter "oldState"
    .parameter "oldAccountType"

    .prologue
    const/4 v4, 0x1

    .line 635
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 637
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    .line 639
    const-string v2, "account_name"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "account_type"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "data_set"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :goto_0
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 649
    .local v0, insert:Lcom/android/contacts/model/EntityDelta;
    if-nez p3, :cond_2

    .line 651
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v2, p2, v0, v3}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 659
    :goto_1
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 660
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 661
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 662
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 663
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 666
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    .line 670
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v2, :cond_3

    .line 672
    invoke-static {v0}, Lcom/android/contacts/model/EntityDeltaList;->fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 678
    :goto_2
    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 680
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 681
    return-void

    .line 643
    .end local v0           #insert:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 644
    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 645
    const-string v2, "data_set"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    .restart local v0       #insert:Lcom/android/contacts/model/EntityDelta;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v0, p4, p2}, Lcom/android/contacts/model/EntityModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/AccountType;)V

    goto :goto_1

    .line 675
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private bindGroupMetaData()V
    .locals 4

    .prologue
    .line 783
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 792
    :cond_0
    return-void

    .line 787
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 788
    .local v1, editorCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 789
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 790
    .local v0, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createContact()V
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 571
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private createContact(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 588
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 592
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 599
    :cond_1
    :goto_1
    return-void

    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_2
    move-object v3, v2

    .line 588
    goto :goto_0

    .line 597
    .restart local v0       #accountType:Lcom/android/contacts/model/AccountType;
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;)V

    goto :goto_1
.end method

.method private disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 856
    const v1, 0x7f0600c7

    invoke-virtual {p1, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, accountView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 859
    return-void
.end method

.method private doJoinContactAction()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 912
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 926
    :goto_0
    return v1

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 919
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b01b1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 923
    goto :goto_0

    .line 926
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v1

    goto :goto_0
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 1093
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1094
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    .line 1095
    :cond_0
    return-void
.end method

.method private doSplitContactAction()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 902
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    :goto_0
    return v1

    .line 904
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 906
    .local v0, dialog:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 907
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 908
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 967
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 968
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 969
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRelativeBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .parameter "ascendant"
    .parameter "view"

    .prologue
    .line 1555
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1556
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1558
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1559
    .local v0, parent:Landroid/view/View;
    :goto_0
    if-eq v0, p1, :cond_0

    .line 1560
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1561
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_0

    .line 1563
    :cond_0
    return-object v1
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter "f"

    .prologue
    .line 976
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 977
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 978
    return-object v0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1682
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1683
    .local v1, count:I
    const/4 v2, 0x0

    .line 1684
    .local v2, countWithPicture:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1685
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1686
    .local v0, childView:Landroid/view/View;
    instance-of v6, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 1687
    check-cast v3, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1688
    .local v3, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1689
    add-int/lit8 v2, v2, 0x1

    .line 1690
    if-le v2, v5, :cond_0

    .line 1695
    .end local v0           #childView:Landroid/view/View;
    .end local v3           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return v5

    .line 1684
    .restart local v0       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1695
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private hasValidState()Z
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactWritable()Z
    .locals 8

    .prologue
    .line 1209
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 1210
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v4

    .line 1211
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1212
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7, v3}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    .line 1213
    .local v6, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, accountType:Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1215
    .local v2, dataSet:Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    .line 1216
    .local v5, type:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1217
    const/4 v7, 0x1

    .line 1220
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v5           #type:Lcom/android/contacts/model/AccountType;
    .end local v6           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_1
    return v7

    .line 1211
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v2       #dataSet:Ljava/lang/String;
    .restart local v5       #type:Lcom/android/contacts/model/AccountType;
    .restart local v6       #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1220
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v5           #type:Lcom/android/contacts/model/AccountType;
    .end local v6           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isEditingUserProfile()Z
    .locals 1

    .prologue
    .line 1224
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 9
    .parameter "contactId"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    const-class v6, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v7, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1202
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1203
    return-void
.end method

.method private loadPhotoPickSize()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 930
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 933
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 934
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 938
    return-void

    .line 936
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 5
    .parameter "oldState"
    .parameter "oldAccount"
    .parameter "newAccount"

    .prologue
    .line 611
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 612
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p2, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 614
    .local v2, oldAccountType:Lcom/android/contacts/model/AccountType;
    iget-object v3, p3, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 617
    .local v1, newAccountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 618
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "external activity called in rebind situation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v3, :cond_0

    .line 620
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v3, p3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 624
    invoke-direct {p0, p3, v1, p1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    goto :goto_0
.end method

.method private revert()Z
    .locals 2

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1083
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1084
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    .line 1088
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1086
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_0
.end method

.method private saveDefaultAccountIfNecessary()V
    .locals 8

    .prologue
    .line 797
    const-string v6, "android.intent.action.INSERT"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 814
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 806
    .local v2, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 807
    .local v5, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, name:Ljava/lang/String;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, type:Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, dataSet:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 813
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v6, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 811
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_2
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private selectAccountAndCreateContact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 540
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v2, :cond_0

    .line 541
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 561
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 550
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 554
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 555
    .local v0, defaultAccount:Lcom/android/contacts/model/AccountWithDataSet;
    if-nez v0, :cond_2

    .line 556
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 558
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "rawContact"
    .parameter "photo"

    .prologue
    .line 1654
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    .line 1655
    .local v0, requestingEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    if-eqz v0, :cond_0

    .line 1656
    invoke-virtual {v0, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1660
    :goto_0
    return-void

    .line 1658
    :cond_0
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "The contact that requested the photo is no longer present."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactLookupUri"

    .prologue
    .line 1184
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 1189
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 1190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1192
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 6
    .parameter "rawContactEditor"

    .prologue
    .line 1379
    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v1

    .line 1380
    .local v1, rawContactId:J
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1382
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 1384
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 1387
    :cond_0
    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 1389
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v3, :cond_1

    .line 1390
    new-instance v3, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1391
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 1392
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->start()V

    .line 1395
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 1397
    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    .line 1398
    .local v0, nameEditor:Lcom/android/contacts/editor/LabeledEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 1399
    return-void
.end method

.method protected doCropPhoto(Ljava/io/File;)V
    .locals 8
    .parameter "f"

    .prologue
    const/4 v7, 0x1

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 994
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 995
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 996
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v3, "Cannot crop image"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004b

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 1532
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1533
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 1536
    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2
    .parameter "rawContactIds"

    .prologue
    const/4 v1, 0x1

    .line 1482
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDeltaList;->setJoinWithRawContacts([J)V

    .line 1487
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public doSaveAction()V
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 1099
    return-void
.end method

.method protected getContactId()J
    .locals 5

    .prologue
    .line 1364
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v3, :cond_1

    .line 1365
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 1366
    .local v2, rawContact:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "contact_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1367
    .local v0, contactId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1372
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rawContact:Lcom/android/contacts/model/EntityDelta;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "photoUri"

    .prologue
    const/4 v3, 0x1

    .line 1007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1013
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1014
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1015
    return-object v0
.end method

.method public getPhotoPickIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 944
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 945
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    return-object v0
.end method

.method public getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 5
    .parameter "rawContactId"

    .prologue
    .line 1666
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1667
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1668
    .local v0, childView:Landroid/view/View;
    instance-of v3, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1669
    check-cast v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1670
    .local v1, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1675
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return-object v1

    .line 1666
    .restart local v0       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1675
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .parameter "action"
    .parameter "lookupUri"
    .parameter "intentExtras"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 397
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 398
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "addToDefaultDirectory"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 400
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 402
    return-void

    :cond_0
    move v0, v2

    .line 398
    goto :goto_0

    :cond_1
    move v1, v2

    .line 400
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 362
    if-eqz p1, :cond_1

    move v2, v3

    .line 364
    .local v2, hasIncomingState:Z
    :goto_0
    if-nez v2, :cond_0

    .line 365
    const-string v5, "android.intent.action.EDIT"

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v3, v4, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 386
    :cond_0
    :goto_1
    return-void

    .line 362
    .end local v2           #hasIncomingState:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 367
    .restart local v2       #hasIncomingState:Z
    :cond_2
    const-string v3, "android.intent.action.INSERT"

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_3

    move-object v0, v4

    .line 370
    .local v0, account:Landroid/accounts/Account;
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_4

    move-object v1, v4

    .line 373
    .local v1, dataSet:Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_5

    .line 375
    new-instance v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    .line 368
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    move-object v0, v3

    goto :goto_2

    .line 370
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 379
    .restart local v1       #dataSet:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto :goto_1

    .line 381
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_6
    const-string v3, "saveCompleted"

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Action String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Only support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 1593
    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1594
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1597
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1648
    :cond_1
    :goto_0
    return-void

    .line 1600
    :pswitch_0
    if-ne p2, v5, :cond_1

    .line 1605
    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    .line 1606
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;)V

    .line 1607
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iput-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    .line 1608
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    goto :goto_0

    .line 1614
    :pswitch_1
    if-ne p2, v5, :cond_1

    .line 1615
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->doCropPhoto(Ljava/io/File;)V

    goto :goto_0

    .line 1620
    :pswitch_2
    if-ne p2, v5, :cond_1

    .line 1621
    if-eqz p3, :cond_1

    .line 1622
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1623
    .local v1, contactId:J
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    .line 1629
    .end local v1           #contactId:J
    :pswitch_3
    if-eq p2, v5, :cond_2

    .line 1630
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    goto :goto_0

    .line 1634
    :cond_2
    if-eqz p3, :cond_3

    .line 1635
    const-string v3, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1636
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v0, :cond_3

    .line 1637
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 1644
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    goto :goto_0

    .line 1597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1403
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v2, v3, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1408
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1411
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    iget-wide v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1417
    .local v1, rawContactView:Lcom/android/contacts/editor/RawContactEditorView;
    if-eqz v1, :cond_0

    .line 1420
    const v2, 0x7f0600c3

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1421
    .local v0, anchorView:Landroid/view/View;
    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 1422
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1423
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1424
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1425
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1426
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v6, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v7, v2, p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1430
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1431
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 1426
    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 323
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 324
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 325
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->loadPhotoPickSize()V

    .line 326
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 413
    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 414
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 417
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 419
    if-nez p1, :cond_1

    .line 421
    new-instance v1, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v1}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 440
    :goto_0
    return-void

    .line 424
    :cond_1
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDeltaList;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 425
    const-string v1, "photorequester"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 427
    const-string v1, "viewidgenerator"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 428
    const-string v1, "currentphotofile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 430
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    .line 432
    :cond_2
    const-string v1, "contactidforjoin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 433
    const-string v1, "contactwritableforjoin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 434
    const-string v1, "showJoinSuggestions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 435
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 436
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 437
    const-string v1, "newLocalProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 438
    const-string v1, "isUserProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 863
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 864
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 343
    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, view:Landroid/view/View;
    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 347
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setHasOptionsMenu(Z)V

    .line 350
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 354
    :cond_0
    return-object v0
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactLookupUri"

    .prologue
    .line 1492
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    .line 1494
    .local v1, dialog:Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1495
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "contactUri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1496
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1497
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1498
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "edit"

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1499
    return-void
.end method

.method public onExternalEditorRequest(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;)V
    .locals 3
    .parameter "account"
    .parameter "uri"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 478
    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 6
    .parameter "contactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p3, rawContactIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 1437
    .local v3, rawContactIds:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 1438
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1440
    :cond_0
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    .line 1442
    .local v1, dialog:Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "rawContactIds"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1444
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1445
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1447
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "join"

    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_1
    return-void

    .line 1448
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1102
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    .line 1103
    return-void

    :cond_0
    move v0, v2

    .line 1102
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 898
    :goto_0
    return v0

    .line 890
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0

    .line 892
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 894
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSplitContactAction()Z

    move-result v0

    goto :goto_0

    .line 896
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinContactAction()Z

    move-result v0

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x7f060146
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 871
    const v2, 0x7f060146

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 874
    const v2, 0x7f060147

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 877
    const v2, 0x7f060148

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 880
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 881
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 882
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    move v2, v4

    .line 874
    goto :goto_0

    :cond_1
    move v3, v4

    .line 877
    goto :goto_1

    .line 884
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_2
    return-void
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;)V
    .locals 11
    .parameter "hadChanges"
    .parameter "saveMode"
    .parameter "saveSucceeded"
    .parameter "contactLookupUri"

    .prologue
    .line 1107
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSaveCompleted("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-eqz p1, :cond_0

    .line 1109
    if-eqz p3, :cond_2

    .line 1110
    const/4 v7, 0x3

    if-eq p2, v7, :cond_0

    .line 1111
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0059

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1117
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1176
    :cond_1
    :goto_1
    return-void

    .line 1114
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0b005a

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1121
    :pswitch_0
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 1122
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v7, :cond_3

    const/4 v5, 0x0

    .line 1125
    .local v5, requestAuthority:Ljava/lang/String;
    :goto_2
    const-string v2, "contacts"

    .line 1127
    .local v2, legacyAuthority:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1128
    .local v6, resultIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    const-string v7, "contacts"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1131
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, p4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1133
    .local v0, contactId:J
    const-string v7, "content://contacts/people"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1134
    .local v3, legacyContentUri:Landroid/net/Uri;
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1136
    .local v4, legacyUri:Landroid/net/Uri;
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1146
    .end local v0           #contactId:J
    .end local v2           #legacyAuthority:Ljava/lang/String;
    .end local v3           #legacyContentUri:Landroid/net/Uri;
    .end local v4           #legacyUri:Landroid/net/Uri;
    .end local v5           #requestAuthority:Ljava/lang/String;
    :goto_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1147
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v7, v6}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto :goto_1

    .line 1122
    .end local v6           #resultIntent:Landroid/content/Intent;
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1139
    .restart local v2       #legacyAuthority:Ljava/lang/String;
    .restart local v5       #requestAuthority:Ljava/lang/String;
    .restart local v6       #resultIntent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v6, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 1143
    .end local v2           #legacyAuthority:Ljava/lang/String;
    .end local v5           #requestAuthority:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #resultIntent:Landroid/content/Intent;
    goto :goto_3

    .line 1152
    .end local v6           #resultIntent:Landroid/content/Intent;
    :pswitch_1
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1154
    const/4 v7, 0x3

    if-ne p2, v7, :cond_6

    .line 1155
    invoke-direct {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    .line 1160
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 1161
    const-string v7, "android.intent.action.EDIT"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, p4, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1162
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1163
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    .line 1168
    :pswitch_2
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1169
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v7, :cond_7

    .line 1170
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v7, p4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1172
    :cond_7
    sget-object v7, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v8, "No listener registered, can not call onSplitFinished"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1568
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1569
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1576
    :cond_0
    const-string v0, "photorequester"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1577
    const-string v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1578
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1579
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_1
    const-string v0, "contactidforjoin"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1582
    const-string v0, "contactwritableforjoin"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1583
    const-string v0, "showJoinSuggestions"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1584
    const-string v0, "enabled"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1585
    const-string v0, "newLocalProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1586
    const-string v0, "isUserProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1587
    const-string v0, "status"

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1588
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1589
    return-void
.end method

.method public onSplitContactConfirmed()V
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v0, :cond_0

    .line 1767
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "mState became null during the user\'s confirming split action. Cannot perform the save action."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :goto_0
    return-void

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->markRawContactsForSplitting()V

    .line 1773
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 391
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 392
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 330
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-ne v0, v1, :cond_1

    .line 337
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 339
    :cond_1
    return-void
.end method

.method public save(I)Z
    .locals 10
    .parameter "saveMode"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 1023
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v9, :cond_1

    :cond_0
    move v9, v1

    .line 1050
    :goto_0
    return v9

    .line 1028
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_3

    .line 1029
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1032
    :cond_3
    iput v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1034
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    .line 1035
    .local v7, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v0, v7}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1036
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    move v0, v9

    :goto_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1040
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 1043
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->saveDefaultAccountIfNecessary()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const-string v2, "saveMode"

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCompleted"

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1049
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1539
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 1549
    :cond_0
    return-void

    .line 1543
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v4, 0x7f06001f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1545
    .local v2, itemList:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1546
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1547
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x1

    .line 444
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v9, :cond_1

    .line 445
    sget-object v9, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "Ignoring background change. This will have to be rebased later"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    .line 451
    .local v2, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v13, :cond_2

    .line 452
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 453
    .local v3, entity:Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 454
    .local v4, entityValues:Landroid/content/ContentValues;
    const-string v9, "account_type"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, type:Ljava/lang/String;
    const-string v9, "data_set"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, dataSet:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 458
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 460
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v9, :cond_0

    .line 461
    const-string v9, "account_name"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, name:Ljava/lang/String;
    const-string v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 463
    .local v6, rawContactId:J
    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    new-instance v10, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v10, v5, v8, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 472
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v3           #entity:Landroid/content/Entity;
    .end local v4           #entityValues:Landroid/content/ContentValues;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #rawContactId:J
    .end local v8           #type:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 306
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v3, p1, :cond_1

    .line 307
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 308
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 310
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 316
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 318
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 8
    .parameter "extras"

    .prologue
    .line 520
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 525
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 526
    .local v4, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "data_set"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, dataSet:Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    .line 529
    .local v5, type:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 531
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, p1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 406
    return-void
.end method
