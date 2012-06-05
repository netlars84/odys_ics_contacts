.class public Lcom/android/contacts/group/GroupEditorFragment;
.super Landroid/app/Fragment;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;,
        Lcom/android/contacts/group/GroupEditorFragment$Member;,
        Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/group/GroupEditorFragment$Status;,
        Lcom/android/contacts/group/GroupEditorFragment$Listener;
    }
.end annotation


# static fields
.field protected static final CONTACT_CHAT_CAPABILITY_COLUMN_INDEX:I = 0x6

.field protected static final CONTACT_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x2

.field protected static final CONTACT_DISPLAY_NAME_PRIMARY_COLUMN_INDEX:I = 0x1

.field protected static final CONTACT_HAS_PHONE_COLUMN_INDEX:I = 0xb

.field protected static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_IS_USER_PROFILE:I = 0xc

.field protected static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x9

.field protected static final CONTACT_PHONETIC_NAME_COLUMN_INDEX:I = 0xa

.field protected static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x7

.field protected static final CONTACT_PHOTO_URI_COLUMN_INDEX:I = 0x8

.field protected static final CONTACT_PRESENCE_STATUS_COLUMN_INDEX:I = 0x5

.field protected static final CONTACT_SORT_KEY_PRIMARY_COLUMN_INDEX:I = 0x3

.field protected static final CONTACT_STARRED_COLUMN_INDEX:I = 0x4

.field private static final CURRENT_EDITOR_TAG:Ljava/lang/String; = "currentEditorForAccount"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final KEY_GROUP_NAME_IS_READ_ONLY:Ljava/lang/String; = "groupNameIsReadOnly"

.field private static final KEY_GROUP_URI:Ljava/lang/String; = "groupUri"

.field private static final KEY_MEMBERS_TO_ADD:Ljava/lang/String; = "membersToAdd"

.field private static final KEY_MEMBERS_TO_DISPLAY:Ljava/lang/String; = "membersToDisplay"

.field private static final KEY_MEMBERS_TO_REMOVE:Ljava/lang/String; = "membersToRemove"

.field private static final KEY_ORIGINAL_GROUP_NAME:Ljava/lang/String; = "originalGroupName"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final LEGACY_CONTACTS_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final LOADER_EXISTING_MEMBERS:I = 0x2

.field private static final LOADER_GROUP_METADATA:I = 0x1

.field private static final LOADER_NEW_GROUP_MEMBER:I = 0x3

.field private static final MEMBER_LOOKUP_URI_KEY:Ljava/lang/String; = "memberLookupUri"

.field private static final MEMBER_RAW_CONTACT_ID_KEY:Ljava/lang/String; = "rawContactId"

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String; = null

.field public static final SAVE_MODE_EXTRA_KEY:Ljava/lang/String; = "saveMode"

.field private static final TAG:Ljava/lang/String; = "GroupEditorFragment"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNameIsReadOnly:Z

.field private mGroupNameView:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mLastGroupEditorId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListMembersToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListMembersToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

.field private mOriginalGroupName:Ljava/lang/String;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 756
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$2;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 780
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$3;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 819
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$4;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 206
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/SuggestedMemberListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupEditorFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupEditorFragment;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addExistingMembers(Ljava/util/List;)V

    return-void
.end method

.method private addExistingMembers(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 712
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 713
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 714
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 715
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 719
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 722
    :cond_0
    return-void
.end method

.method private addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .parameter "member"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 731
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    .line 732
    return-void
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 474
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group not found with URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Closing activity now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 482
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 483
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 484
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 485
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 486
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 489
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 485
    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, listMembers:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 701
    .local v2, size:I
    new-array v1, v2, [J

    .line 702
    .local v1, membersArray:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 703
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getRawContactId()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    return-object v1
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 538
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    .line 539
    :cond_0
    return-void
.end method

.method private getAccountType()Lcom/android/contacts/model/AccountType;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getUpdatedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, groupNameFromTextView:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 696
    .end local v0           #groupNameFromTextView:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private hasMembershipChange()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNameChange()Z
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidGroupName()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    goto :goto_0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 289
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 290
    const-string v0, "groupUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 291
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 293
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 294
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 295
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 296
    const-string v0, "dataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 298
    const-string v0, "groupNameIsReadOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 299
    const-string v0, "originalGroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 301
    const-string v0, "membersToAdd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 302
    const-string v0, "membersToRemove"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 303
    const-string v0, "membersToDisplay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 304
    return-void
.end method

.method private removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .parameter "member"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 746
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 747
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->notifyDataSetChanged()V

    .line 750
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->removeMember(J)V

    .line 751
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private revert()Z
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    .line 532
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 530
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/group/GroupEditorFragment;)V

    goto :goto_0
.end method

.method private selectAccountAndCreateGroup()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const-string v1, "GroupEditorFragment"

    const-string v2, "No accounts were found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onAccountsNotFound()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 328
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 329
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 330
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 335
    :cond_2
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 336
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0106

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setupEditorForAccount()V
    .locals 15

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 377
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v5

    .line 378
    .local v5, editable:Z
    const/4 v7, 0x0

    .line 379
    .local v7, isNewEditor:Z
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v10, v5}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->setIsGroupMembershipEditable(Z)V

    .line 385
    if-eqz v5, :cond_6

    const v8, 0x7f04005f

    .line 387
    .local v8, newGroupEditorId:I
    :goto_0
    iget v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    if-eq v8, v10, :cond_7

    .line 388
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v11, "currentEditorForAccount"

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    .line 389
    .local v9, oldEditorView:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 390
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 392
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 393
    .local v6, editorView:Landroid/view/View;
    const-string v10, "currentEditorForAccount"

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 394
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 395
    iput v8, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    .line 396
    const/4 v7, 0x1

    .line 404
    .end local v9           #oldEditorView:Landroid/view/View;
    :cond_1
    const v10, 0x7f0600ce

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    .line 405
    const v10, 0x7f0600e0

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/AutoCompleteTextView;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 408
    const v10, 0x102000a

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    .line 409
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 412
    const v10, 0x7f0600cd

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 413
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 414
    .local v3, accountTypeDisplayLabel:Ljava/lang/CharSequence;
    const v10, 0x7f0600ca

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 415
    .local v0, accountIcon:Landroid/widget/ImageView;
    const v10, 0x7f0600c8

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 416
    .local v4, accountTypeTextView:Landroid/widget/TextView;
    const v10, 0x7f0600c9

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 417
    .local v1, accountNameTextView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 418
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0165

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    .end local v0           #accountIcon:Landroid/widget/ImageView;
    .end local v1           #accountNameTextView:Landroid/widget/TextView;
    .end local v3           #accountTypeDisplayLabel:Ljava/lang/CharSequence;
    .end local v4           #accountTypeTextView:Landroid/widget/TextView;
    :cond_3
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v10, :cond_4

    .line 429
    new-instance v10, Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v12, 0x109000a

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 431
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 432
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountType(Ljava/lang/String;)V

    .line 433
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountName(Ljava/lang/String;)V

    .line 434
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setDataSet(Ljava/lang/String;)V

    .line 435
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/android/contacts/group/GroupEditorFragment$1;

    invoke-direct {v11, p0}, Lcom/android/contacts/group/GroupEditorFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 455
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 459
    :cond_4
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 460
    if-eqz v7, :cond_5

    .line 461
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 463
    :cond_5
    sget-object v10, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 464
    return-void

    .line 385
    .end local v6           #editorView:Landroid/view/View;
    .end local v8           #newGroupEditorId:I
    :cond_6
    const v8, 0x7f04004f

    goto/16 :goto_0

    .line 398
    .restart local v8       #newGroupEditorId:I
    :cond_7
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v11, "currentEditorForAccount"

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 399
    .restart local v6       #editorView:Landroid/view/View;
    if-nez v6, :cond_1

    .line 400
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Group editor view not found"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 459
    :cond_8
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private startGroupMetaDataLoader()V
    .locals 4

    .prologue
    .line 263
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 266
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .parameter "action"
    .parameter "groupUri"
    .parameter "intentExtras"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 468
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 469
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 470
    iput-object p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 471
    return-void

    .line 469
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public loadMemberToAddToGroup(JLjava/lang/String;)V
    .locals 4
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "rawContactId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 495
    const-string v1, "memberLookupUri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 497
    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 1
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 343
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 344
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 345
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 347
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 355
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 228
    if-eqz p1, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 231
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_0

    .line 260
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 238
    :cond_2
    const-string v2, "android.intent.action.EDIT"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 240
    :cond_3
    const-string v2, "android.intent.action.INSERT"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_4

    move-object v0, v3

    .line 243
    .local v0, account:Landroid/accounts/Account;
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_5

    move-object v1, v3

    .line 246
    .local v1, dataSet:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_6

    .line 248
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 249
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 241
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v0, v2

    goto :goto_1

    .line 243
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 254
    .restart local v1       #dataSet:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->selectAccountAndCreateGroup()V

    goto :goto_0

    .line 257
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Action String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Only support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 219
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    .line 220
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 221
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    .line 222
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 514
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 515
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setHasOptionsMenu(Z)V

    .line 211
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 212
    const v0, 0x7f04005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    .line 213
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDoneClicked()V
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->save(I)Z

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 519
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 523
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 521
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x7f060149
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveCompleted(ZILandroid/net/Uri;)V
    .locals 12
    .parameter "hadChanges"
    .parameter "saveMode"
    .parameter "groupUri"

    .prologue
    const/4 v8, 0x0

    .line 627
    if-eqz p3, :cond_1

    const/4 v7, 0x1

    .line 628
    .local v7, success:Z
    :goto_0
    const-string v9, "GroupEditorFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveCompleted("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz p1, :cond_0

    .line 630
    iget-object v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_2

    const v9, 0x7f0b005b

    :goto_1
    invoke-static {v10, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 633
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 669
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported save mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v7           #success:Z
    :cond_1
    move v7, v8

    .line 627
    goto :goto_0

    .line 630
    .restart local v7       #success:Z
    :cond_2
    const v9, 0x7f0b005c

    goto :goto_1

    .line 638
    :sswitch_0
    if-eqz v7, :cond_6

    if-eqz p3, :cond_6

    .line 639
    if-nez p3, :cond_4

    const/4 v4, 0x0

    .line 642
    .local v4, requestAuthority:Ljava/lang/String;
    :goto_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v6, resultIntent:Landroid/content/Intent;
    const-string v8, "contacts"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 645
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 646
    .local v0, groupId:J
    const-string v8, "content://contacts/groups"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 647
    .local v2, legacyContentUri:Landroid/net/Uri;
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 649
    .local v3, legacyUri:Landroid/net/Uri;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 655
    .end local v0           #groupId:J
    .end local v2           #legacyContentUri:Landroid/net/Uri;
    .end local v3           #legacyUri:Landroid/net/Uri;
    :goto_3
    const/4 v5, -0x1

    .line 661
    .end local v4           #requestAuthority:Ljava/lang/String;
    .local v5, resultCode:I
    :goto_4
    sget-object v8, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v8, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 662
    iget-object v8, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v8, :cond_3

    .line 663
    iget-object v8, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v8, v5, v6}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;)V

    .line 671
    :cond_3
    return-void

    .line 639
    .end local v5           #resultCode:I
    .end local v6           #resultIntent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 652
    .restart local v4       #requestAuthority:Ljava/lang/String;
    .restart local v6       #resultIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {v6, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 657
    .end local v4           #requestAuthority:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    :cond_6
    const/4 v5, 0x0

    .line 658
    .restart local v5       #resultCode:I
    const/4 v6, 0x0

    .restart local v6       #resultIntent:Landroid/content/Intent;
    goto :goto_4

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "groupUri"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    const-string v0, "groupId"

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 275
    const-string v0, "status"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 276
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "dataSet"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "groupNameIsReadOnly"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    const-string v0, "originalGroupName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "membersToAdd"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 284
    const-string v0, "membersToRemove"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 285
    const-string v0, "membersToDisplay"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 286
    return-void
.end method

.method public save(I)Z
    .locals 14
    .parameter "saveMode"

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 575
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v4, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-eq v2, v4, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    if-nez p1, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 585
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v2

    if-nez v2, :cond_3

    .line 586
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZILandroid/net/Uri;)V

    move v1, v13

    .line 587
    goto :goto_0

    .line 590
    :cond_3
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 592
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 594
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 597
    const/4 v12, 0x0

    .line 598
    .local v12, saveIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 600
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v3

    .line 603
    .local v3, membersToAddArray:[J
    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "saveCompleted"

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 622
    :goto_1
    invoke-virtual {v0, v12}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v1, v13

    .line 623
    goto :goto_0

    .line 608
    .end local v3           #membersToAddArray:[J
    :cond_4
    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 610
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v3

    .line 613
    .restart local v3       #membersToAddArray:[J
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v9

    .line 616
    .local v9, membersToRemoveArray:[J
    iget-wide v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "saveCompleted"

    move-object v4, v0

    move-object v8, v3

    invoke-static/range {v4 .. v11}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 619
    goto :goto_1

    .line 620
    .end local v3           #membersToAddArray:[J
    .end local v9           #membersToRemoveArray:[J
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid intent action type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 308
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 311
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .line 501
    return-void
.end method
