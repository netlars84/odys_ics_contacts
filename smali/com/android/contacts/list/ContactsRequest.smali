.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ALL_CONTACTS:I = 0xf

.field public static final ACTION_CONTACTS_WITH_PHONES:I = 0x11

.field public static final ACTION_CREATE_SHORTCUT_CALL:I = 0x78

.field public static final ACTION_CREATE_SHORTCUT_CONTACT:I = 0x6e

.field public static final ACTION_CREATE_SHORTCUT_SMS:I = 0x82

.field public static final ACTION_DEFAULT:I = 0xa

.field public static final ACTION_FREQUENT:I = 0x28

.field public static final ACTION_GROUP:I = 0x14

.field public static final ACTION_INSERT_OR_EDIT_CONTACT:I = 0x50

.field public static final ACTION_PICK_CONTACT:I = 0x3c

.field public static final ACTION_PICK_EMAIL:I = 0x69

.field public static final ACTION_PICK_OR_CREATE_CONTACT:I = 0x46

.field public static final ACTION_PICK_PHONE:I = 0x5a

.field public static final ACTION_PICK_POSTAL:I = 0x64

.field public static final ACTION_STARRED:I = 0x1e

.field public static final ACTION_STREQUENT:I = 0x32

.field public static final ACTION_VIEW_CONTACT:I = 0x8c

.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionCode:I

.field private mContactUri:Landroid/net/Uri;

.field private mDirectorySearchEnabled:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibilityMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/contacts/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 88
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 110
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 111
    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 112
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 113
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 114
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 115
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 116
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 117
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 118
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 119
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 120
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 191
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 192
    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 180
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactUri"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 244
    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 236
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .parameter "includeProfile"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 216
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 224
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setRedirectIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 176
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 200
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 168
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRedirectIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mQueryString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIncludeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLegacyCompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDirectorySearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 150
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_1

    :cond_2
    move v0, v2

    .line 152
    goto :goto_2

    :cond_3
    move v0, v2

    .line 153
    goto :goto_3

    :cond_4
    move v1, v2

    .line 154
    goto :goto_4
.end method
