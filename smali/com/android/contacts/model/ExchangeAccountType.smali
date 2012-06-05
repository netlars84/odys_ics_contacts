.class public Lcom/android/contacts/model/ExchangeAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "ExchangeAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.exchange"

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 47
    const-string v1, "com.android.exchange"

    iput-object v1, p0, Lcom/android/contacts/model/ExchangeAccountType;->accountType:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/ExchangeAccountType;->resPackageName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/contacts/model/ExchangeAccountType;->summaryResPackageName:Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ExchangeAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/model/ExchangeAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v1, "ExchangeAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v11, 0x7f0b015a

    const v10, 0x7f0b0158

    const v9, 0x7f0b0157

    const/4 v4, 0x1

    const/16 v8, 0x2061

    .line 104
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "#displayName"

    const v2, 0x7f0b00fe

    const/4 v3, -0x1

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 107
    .local v7, kind:Lcom/android/contacts/model/DataKind;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 109
    .local v6, displayOrderPrimary:Z
    iput v4, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 111
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 112
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0159

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    if-nez v6, :cond_0

    .line 115
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_0
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b015b

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v7

    .line 122
    :cond_0
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    invoke-direct {v1, v2, v11, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 200
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 202
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 203
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0048

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-object v0
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0102

    const/4 v4, 0x1

    .line 302
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/16 v3, 0x96

    const v5, 0x7f04004e

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 305
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 306
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 308
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 310
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 311
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 312
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/contacts/model/ExchangeAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 316
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 317
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 250
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 253
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    iput v3, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 255
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 256
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 259
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0049

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-object v0
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 157
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 159
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 160
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b00ff

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object v0
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 295
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 296
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0040

    const v5, 0x24001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-object v0
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2001

    .line 266
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 268
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 270
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 271
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0042

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f0b0043

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 168
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 170
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 172
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/contacts/model/ExchangeAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 191
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0047

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v0
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc1

    const/4 v4, 0x1

    .line 137
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "#phoneticName"

    const v2, 0x7f0b015f

    const/4 v3, -0x1

    const v5, 0x7f040071

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 139
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0b00fe

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 140
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 142
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 145
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b015e

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b015c

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 281
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 283
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 285
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 286
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v2, v3, v4, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b00fe

    const/16 v8, 0xc1

    const/4 v4, 0x1

    const/16 v7, 0x2061

    .line 75
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const/4 v3, -0x1

    const v5, 0x7f04008a

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ExchangeAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 77
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 78
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 80
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 82
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 83
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0159

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0b0158

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b015a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0b0157

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b015b

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b015e

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b015c

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v10, 0x7f0b0153

    const v9, 0x7f0b0152

    const v8, 0x7f0b014f

    const/4 v7, 0x1

    const v6, 0x22071

    .line 210
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 212
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 214
    .local v1, useJapaneseOrder:Z
    const-string v2, "data2"

    iput-object v2, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 216
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/contacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/android/contacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/contacts/model/ExchangeAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 221
    if-eqz v1, :cond_0

    .line 222
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0b0155

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b0154

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    invoke-direct {v3, v4, v10, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    invoke-direct {v3, v4, v10, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b0154

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0b0155

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 326
    .local v0, kind:Lcom/android/contacts/model/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 328
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 329
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0101

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method
