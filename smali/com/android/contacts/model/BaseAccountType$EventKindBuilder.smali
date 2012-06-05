.class Lcom/android/contacts/model/BaseAccountType$EventKindBuilder;
.super Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$EventKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 4
    .parameter "attrs"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1462
    const-string v1, "yearOptional"

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {p1, v1, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    .line 1464
    .local v0, yo:Z
    const-string v1, "birthday"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    .line 1473
    :goto_0
    return-object v1

    .line 1467
    :cond_0
    const-string v1, "anniversary"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0

    .line 1468
    :cond_1
    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0

    .line 1469
    :cond_2
    const-string v1, "custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1470
    invoke-static {v3, v0}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0

    .line 1473
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1435
    const-string v0, "event"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 14
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1442
    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/contact_event"

    const-string v7, "data2"

    const v8, 0x7f0b0102

    const/16 v9, 0x96

    const v10, 0x7f04004e

    new-instance v11, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v11}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    new-instance v12, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v12, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/contacts/model/BaseAccountType$EventKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 1447
    .local v13, kind:Lcom/android/contacts/model/DataKind;
    iget-object v1, v13, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0102

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    const-string v1, "dateWithTime"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v13, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 1451
    sget-object v1, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v13, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 1457
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/model/DataKind;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 1453
    :cond_0
    sget-object v1, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v13, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 1454
    sget-object v1, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v13, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method
