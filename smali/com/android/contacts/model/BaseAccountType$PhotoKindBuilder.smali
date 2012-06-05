.class Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;
.super Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    const-string v0, "photo"

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
    .line 1318
    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/photo"

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 1323
    .local v12, kind:Lcom/android/contacts/model/DataKind;
    iget-object v0, v12, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data15"

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    invoke-virtual {p0, v12}, Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;->throwIfList(Lcom/android/contacts/model/DataKind;)V

    .line 1327
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/model/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
