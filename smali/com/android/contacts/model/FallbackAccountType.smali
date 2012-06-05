.class public Lcom/android/contacts/model/FallbackAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "FallbackAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/contacts/model/FallbackAccountType;->accountType:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/android/contacts/model/FallbackAccountType;->dataSet:Ljava/lang/String;

    .line 30
    const v1, 0x7f0b010d

    iput v1, p0, Lcom/android/contacts/model/FallbackAccountType;->titleRes:I

    .line 31
    const/high16 v1, 0x7f03

    iput v1, p0, Lcom/android/contacts/model/FallbackAccountType;->iconRes:I

    .line 33
    iput-object p2, p0, Lcom/android/contacts/model/FallbackAccountType;->resPackageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/contacts/model/FallbackAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/model/FallbackAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v1, "FallbackAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static createForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 67
    new-instance v0, Lcom/android/contacts/model/FallbackAccountType;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
