.class public Lcom/android/contacts/model/ExternalAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "ExternalAccountType.java"


# static fields
.field private static final ATTR_ACCOUNT_ICON:Ljava/lang/String; = "accountTypeIcon"

.field private static final ATTR_ACCOUNT_LABEL:Ljava/lang/String; = "accountTypeLabel"

.field private static final ATTR_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final ATTR_CREATE_CONTACT_ACTIVITY:Ljava/lang/String; = "createContactActivity"

.field private static final ATTR_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final ATTR_EDIT_CONTACT_ACTIVITY:Ljava/lang/String; = "editContactActivity"

.field private static final ATTR_EXTENSION_PACKAGE_NAMES:Ljava/lang/String; = "extensionPackageNames"

.field private static final ATTR_INVITE_CONTACT_ACTION_LABEL:Ljava/lang/String; = "inviteContactActionLabel"

.field private static final ATTR_INVITE_CONTACT_ACTIVITY:Ljava/lang/String; = "inviteContactActivity"

.field private static final ATTR_VIEW_CONTACT_NOTIFY_SERVICE:Ljava/lang/String; = "viewContactNotifyService"

.field private static final ATTR_VIEW_GROUP_ACTION_LABEL:Ljava/lang/String; = "viewGroupActionLabel"

.field private static final ATTR_VIEW_GROUP_ACTIVITY:Ljava/lang/String; = "viewGroupActivity"

.field private static final ATTR_VIEW_STREAM_ITEM_ACTIVITY:Ljava/lang/String; = "viewStreamItemActivity"

.field private static final ATTR_VIEW_STREAM_ITEM_PHOTO_ACTIVITY:Ljava/lang/String; = "viewStreamItemPhotoActivity"

.field private static final METADATA_CONTACTS:Ljava/lang/String; = "android.provider.CONTACTS_STRUCTURE"

.field private static final TAG:Ljava/lang/String; = "ExternalAccountType"

.field private static final TAG_CONTACTS_ACCOUNT_TYPE:Ljava/lang/String; = "ContactsAccountType"

.field private static final TAG_CONTACTS_DATA_KIND:Ljava/lang/String; = "ContactsDataKind"

.field private static final TAG_CONTACTS_SOURCE_LEGACY:Ljava/lang/String; = "ContactsSource"

.field private static final TAG_EDIT_SCHEMA:Ljava/lang/String; = "EditSchema"


# instance fields
.field private mAccountTypeIconAttribute:Ljava/lang/String;

.field private mAccountTypeLabelAttribute:Ljava/lang/String;

.field private mCreateContactActivityClassName:Ljava/lang/String;

.field private mEditContactActivityClassName:Ljava/lang/String;

.field private mExtensionPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasContactsMetadata:Z

.field private mHasEditSchema:Z

.field private mInviteActionLabelAttribute:Ljava/lang/String;

.field private mInviteActionLabelResId:I

.field private mInviteContactActivity:Ljava/lang/String;

.field private final mIsExtension:Z

.field private mViewContactNotifyService:Ljava/lang/String;

.field private mViewGroupActivity:Ljava/lang/String;

.field private mViewGroupLabelAttribute:Ljava/lang/String;

.field private mViewGroupLabelResId:I

.field private mViewStreamItemActivity:Ljava/lang/String;

.field private mViewStreamItemPhotoActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"
    .parameter "isExtension"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 9
    .parameter "context"
    .parameter "resPackageName"
    .parameter "isExtension"
    .parameter "injectedMetadata"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 106
    iput-boolean p3, p0, Lcom/android/contacts/model/ExternalAccountType;->mIsExtension:Z

    .line 107
    iput-object p2, p0, Lcom/android/contacts/model/ExternalAccountType;->resPackageName:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/android/contacts/model/ExternalAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 112
    .local v5, pm:Landroid/content/pm/PackageManager;
    if-nez p4, :cond_3

    .line 114
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 122
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    :goto_0
    const/4 v3, 0x1

    .line 124
    .local v3, needLineNumberInErrorLog:Z
    if-eqz v4, :cond_0

    .line 125
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/contacts/model/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 129
    :cond_0
    const/4 v3, 0x0

    .line 130
    iget-boolean v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mHasEditSchema:Z

    if-eqz v6, :cond_4

    .line 131
    const-string v6, "vnd.android.cursor.item/name"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 132
    const-string v6, "#displayName"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 133
    const-string v6, "#phoneticName"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 134
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-direct {p0, v6}, Lcom/android/contacts/model/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_1
    if-eqz v4, :cond_1

    .line 156
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 160
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 161
    iget-object v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/ExternalAccountType;->summaryResPackageName:Ljava/lang/String;

    const-string v8, "inviteContactActionLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelResId:I

    .line 163
    iget-object v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/ExternalAccountType;->summaryResPackageName:Ljava/lang/String;

    const-string v8, "viewGroupActionLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelResId:I

    .line 165
    iget-object v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/ExternalAccountType;->resPackageName:Ljava/lang/String;

    const-string v8, "accountTypeLabel"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/ExternalAccountType;->titleRes:I

    .line 167
    iget-object v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/model/ExternalAccountType;->resPackageName:Ljava/lang/String;

    const-string v8, "accountTypeIcon"

    invoke-static {p1, v6, v7, v8}, Lcom/android/contacts/model/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/model/ExternalAccountType;->iconRes:I

    .line 171
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/model/ExternalAccountType;->mIsInitialized:Z

    .line 172
    .end local v3           #needLineNumberInErrorLog:Z
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_2
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 117
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .line 120
    .end local v1           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object v4, p4

    .restart local v4       #parser:Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 137
    .restart local v3       #needLineNumberInErrorLog:Z
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Lcom/android/contacts/model/AccountType$DefinitionException;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v2, error:Ljava/lang/StringBuilder;
    const-string v6, "Problem reading XML"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 146
    const-string v6, " in line "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_5
    const-string v6, " for external package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v6, "ExternalAccountType"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 155
    .end local v0           #e:Lcom/android/contacts/model/AccountType$DefinitionException;
    .end local v2           #error:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_6

    .line 156
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v6
.end method

.method private checkKindExists(Ljava/lang/String;)V
    .locals 3
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExternalAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    return-void
.end method

.method private loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 8
    .parameter "context"
    .parameter "resPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 190
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x84

    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 192
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v0, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 193
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    const-string v7, "android.provider.CONTACTS_STRUCTURE"

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 195
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 200
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :goto_1
    return-object v4

    .line 192
    .restart local v4       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v6       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "resourceName"
    .parameter "packageName"
    .parameter "xmlAttributeName"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 439
    :cond_0
    :goto_0
    return v3

    .line 422
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_2

    .line 423
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be a resource name beginnig with \'@\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 424
    goto :goto_0

    .line 426
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 434
    .local v2, res:Landroid/content/res/Resources;
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 435
    .local v3, resId:I
    if-nez v3, :cond_0

    .line 436
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 437
    goto :goto_0

    .line 430
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resId:I
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ExternalAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 432
    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelResId:I

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelResId:I

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    return-object v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 21
    .parameter "context"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 291
    .local v6, attrs:Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 295
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 296
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "No start tag found"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    .end local v16           #type:I
    :catch_0
    move-exception v9

    .line 399
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v18, Lcom/android/contacts/model/AccountType$DefinitionException;

    const-string v19, "Problem reading XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 299
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16       #type:I
    :cond_2
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 300
    .local v12, rootTag:Ljava/lang/String;
    const-string v18, "ContactsAccountType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "ContactsSource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 302
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    .end local v12           #rootTag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_1
    move-exception v9

    .line 401
    .local v9, e:Ljava/io/IOException;
    new-instance v18, Lcom/android/contacts/model/AccountType$DefinitionException;

    const-string v19, "Problem reading XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 306
    .end local v9           #e:Ljava/io/IOException;
    .restart local v12       #rootTag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_3
    const/16 v18, 0x1

    :try_start_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mHasContactsMetadata:Z

    .line 308
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 309
    .local v5, attributeCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_13

    .line 310
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, attr:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 312
    .local v17, value:Ljava/lang/String;
    const-string v18, "ExternalAccountType"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 313
    const-string v18, "ExternalAccountType"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_4
    const-string v18, "editContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 316
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 309
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 317
    :cond_5
    const-string v18, "createContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 318
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_1

    .line 319
    :cond_6
    const-string v18, "inviteContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 320
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto :goto_1

    .line 321
    :cond_7
    const-string v18, "inviteContactActionLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 322
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 323
    :cond_8
    const-string v18, "viewContactNotifyService"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 324
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto :goto_1

    .line 325
    :cond_9
    const-string v18, "viewGroupActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 326
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto :goto_1

    .line 327
    :cond_a
    const-string v18, "viewGroupActionLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 328
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 329
    :cond_b
    const-string v18, "viewStreamItemActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 330
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    goto :goto_1

    .line 331
    :cond_c
    const-string v18, "viewStreamItemPhotoActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 332
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    goto/16 :goto_1

    .line 333
    :cond_d
    const-string v18, "dataSet"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 334
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->dataSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 335
    :cond_e
    const-string v18, "extensionPackageNames"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 337
    :cond_f
    const-string v18, "accountType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 338
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_1

    .line 339
    :cond_10
    const-string v18, "accountTypeLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 340
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 341
    :cond_11
    const-string v18, "accountTypeIcon"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 342
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 344
    :cond_12
    const-string v18, "ExternalAccountType"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported attribute "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    .end local v4           #attr:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_13
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 352
    .local v13, startDepth:I
    :cond_14
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v13, :cond_1a

    :cond_15
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 354
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 358
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 359
    .local v15, tag:Ljava/lang/String;
    const-string v18, "EditSchema"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 360
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/model/ExternalAccountType;->mHasEditSchema:Z

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/model/ExternalAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 362
    :cond_16
    const-string v18, "ContactsDataKind"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 363
    sget-object v18, Landroid/R$styleable;->ContactsDataKind:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 365
    .local v3, a:Landroid/content/res/TypedArray;
    new-instance v11, Lcom/android/contacts/model/DataKind;

    invoke-direct {v11}, Lcom/android/contacts/model/DataKind;-><init>()V

    .line 367
    .local v11, kind:Lcom/android/contacts/model/DataKind;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 370
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, summaryColumn:Ljava/lang/String;
    if-eqz v14, :cond_17

    .line 374
    new-instance v18, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 377
    :cond_17
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 379
    .local v7, detailColumn:Ljava/lang/String;
    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 383
    .local v8, detailSocialSummary:Z
    if-eqz v8, :cond_18

    .line 385
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/android/contacts/model/DataKind;->actionBodySocial:Z

    .line 388
    :cond_18
    if-eqz v7, :cond_19

    .line 390
    new-instance v18, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 393
    :cond_19
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/ExternalAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 403
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v7           #detailColumn:Ljava/lang/String;
    .end local v8           #detailSocialSummary:Z
    .end local v11           #kind:Lcom/android/contacts/model/DataKind;
    .end local v14           #summaryColumn:Ljava/lang/String;
    .end local v15           #tag:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/contacts/model/ExternalAccountType;->mIsExtension:Z

    return v0
.end method
