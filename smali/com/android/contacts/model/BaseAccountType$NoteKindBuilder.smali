.class Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;
.super Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoteKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1334
    const-string v0, "note"

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
    .line 1341
    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/note"

    const/4 v6, 0x0

    const v7, 0x7f0b0040

    const/16 v8, 0x6e

    const v9, 0x7f04008d

    new-instance v10, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v0, 0x7f0b0040

    invoke-direct {v10, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v11, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 1346
    .local v12, kind:Lcom/android/contacts/model/DataKind;
    iget-object v0, v12, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0040

    const v4, 0x24001

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-virtual {p0, v12}, Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;->throwIfList(Lcom/android/contacts/model/DataKind;)V

    .line 1350
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/model/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
