.class public Lcom/android/contacts/group/GroupEditorFragment$Member;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[Lcom/android/contacts/group/GroupEditorFragment$Member;


# instance fields
.field private final mContactId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mPhotoUri:Landroid/net/Uri;

.field private final mRawContactId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/contacts/group/GroupEditorFragment$Member;

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Member;->EMPTY_ARRAY:[Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 926
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member$1;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member$1;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Member;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "rawContactId"
    .parameter "lookupKey"
    .parameter "contactId"
    .parameter "displayName"
    .parameter "photoUri"

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-wide p1, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    .line 868
    iput-wide p4, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    .line 869
    invoke-static {p4, p5, p3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    .line 870
    iput-object p6, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    .line 871
    if-eqz p7, :cond_0

    invoke-static {p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    .line 872
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    .line 921
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    .line 923
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    .line 924
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 896
    instance-of v2, p1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 897
    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 898
    .local v0, otherMember:Lcom/android/contacts/group/GroupEditorFragment$Member;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 900
    .end local v0           #otherMember:Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_0
    return v1
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 879
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 875
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 911
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 912
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 913
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 914
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 916
    return-void
.end method
