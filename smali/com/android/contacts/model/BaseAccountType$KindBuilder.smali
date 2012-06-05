.class abstract Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>()V

    return-void
.end method

.method private parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 5
    .parameter "parser"
    .parameter "attrs"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 877
    const-string v2, "type"

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, v2}, Lcom/android/contacts/model/BaseAccountType;->access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, typeName:Ljava/lang/String;
    invoke-virtual {p0, p2, v1}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;->buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 880
    .local v0, et:Lcom/android/contacts/model/AccountType$EditType;
    if-nez v0, :cond_0

    .line 881
    new-instance v2, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for data kind \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 884
    :cond_0
    const-string v2, "maxOccurs"

    const/4 v3, -0x1

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    invoke-static {p2, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1500(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 886
    return-object v0
.end method

.method private parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/DataKind;Z)V
    .locals 7
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"
    .parameter "kind"
    .parameter "canHaveTypes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 849
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 850
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 851
    .local v0, depth:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    if-ne v0, v4, :cond_0

    .line 855
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, tag:Ljava/lang/String;
    const-string v4, "Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 857
    if-eqz p5, :cond_2

    .line 858
    iget-object v4, p4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;->parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 860
    :cond_2
    new-instance v4, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kind "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t have types"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 864
    :cond_3
    new-instance v4, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 867
    .end local v0           #depth:I
    .end local v2           #tag:Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 1
    .parameter "attrs"
    .parameter "type"

    .prologue
    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method protected final newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;
    .locals 8
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"
    .parameter "isPseudo"
    .parameter "mimeType"
    .parameter "typeColumn"
    .parameter "titleRes"
    .parameter "weight"
    .parameter "editorLayoutResourceId"
    .parameter "actionHeader"
    .parameter "actionBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    const-string v2, "BaseAccountType"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    const-string v2, "BaseAccountType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding DataKind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    new-instance v1, Lcom/android/contacts/model/DataKind;

    const/4 v5, 0x1

    move-object v2, p5

    move v3, p7

    move/from16 v4, p8

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    .line 808
    .local v1, kind:Lcom/android/contacts/model/DataKind;
    iput-object p6, v1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 809
    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 810
    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 811
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 815
    if-nez p4, :cond_2

    .line 816
    const-string v2, "maxOccurs"

    const/4 v3, -0x1

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    invoke-static {p3, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1500(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 821
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 823
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 824
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/DataKind;Z)V

    .line 825
    iget-object v2, v1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 826
    new-instance v2, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must have at least one type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 831
    :cond_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/DataKind;Z)V

    .line 835
    :cond_2
    return-object v1
.end method

.method public abstract parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
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
.end method

.method protected final throwIfList(Lcom/android/contacts/model/DataKind;)V
    .locals 3
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 899
    iget v0, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 900
    new-instance v0, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have \'overallMax=\"1\"\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    return-void
.end method
