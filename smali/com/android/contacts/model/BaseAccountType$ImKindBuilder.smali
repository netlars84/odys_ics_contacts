.class Lcom/android/contacts/model/BaseAccountType$ImKindBuilder;
.super Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$ImKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "attrs"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1265
    const-string v0, "aim"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    .line 1266
    :cond_0
    const-string v0, "msn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1267
    :cond_1
    const-string v0, "yahoo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1268
    :cond_2
    const-string v0, "skype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1269
    :cond_3
    const-string v0, "qq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1270
    :cond_4
    const-string v0, "google_talk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1271
    :cond_5
    const-string v0, "icq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1272
    :cond_6
    const-string v0, "jabber"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1273
    :cond_7
    const-string v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1274
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1277
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1238
    const-string v0, "im"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 13
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
    .line 1250
    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/im"

    const-string v6, "data5"

    const v7, 0x7f0b0049

    const/16 v8, 0x14

    const v9, 0x7f04008d

    new-instance v10, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;

    invoke-direct {v10}, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;-><init>()V

    new-instance v11, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/model/BaseAccountType$ImKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 1255
    .local v12, kind:Lcom/android/contacts/model/DataKind;
    iget-object v0, v12, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0049

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v12, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 1258
    iget-object v0, v12, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/model/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
