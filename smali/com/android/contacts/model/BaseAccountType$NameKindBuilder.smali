.class Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/model/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/BaseAccountType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static checkAttributeTrue(ZLjava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "attrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 917
    if-nez p0, :cond_0

    .line 918
    new-instance v0, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    const-string v0, "name"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 26
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
    .line 932
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 935
    .local v14, displayOrderPrimary:Z
    const-string v2, "supportsDisplayName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v19

    .line 936
    .local v19, supportsDisplayName:Z
    const-string v2, "supportsPrefix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v24

    .line 937
    .local v24, supportsPrefix:Z
    const-string v2, "supportsMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v20

    .line 938
    .local v20, supportsMiddleName:Z
    const-string v2, "supportsSuffix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v25

    .line 939
    .local v25, supportsSuffix:Z
    const-string v2, "supportsPhoneticFamilyName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v21

    .line 941
    .local v21, supportsPhoneticFamilyName:Z
    const-string v2, "supportsPhoneticMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v23

    .line 943
    .local v23, supportsPhoneticMiddleName:Z
    const-string v2, "supportsPhoneticGivenName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v22

    .line 947
    .local v22, supportsPhoneticGivenName:Z
    const-string v2, "supportsDisplayName"

    move/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 948
    const-string v2, "supportsPrefix"

    move/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 949
    const-string v2, "supportsMiddleName"

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 950
    const-string v2, "supportsSuffix"

    move/from16 v0, v25

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 951
    const-string v2, "supportsPhoneticFamilyName"

    move/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 952
    const-string v2, "supportsPhoneticMiddleName"

    move/from16 v0, v23

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 953
    const-string v2, "supportsPhoneticGivenName"

    move/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 955
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 958
    .local v16, kinds:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/DataKind;>;"
    const/4 v6, 0x0

    const-string v7, "vnd.android.cursor.item/name"

    const/4 v8, 0x0

    const v9, 0x7f0b00fe

    const/4 v10, -0x1

    const v11, 0x7f04008a

    new-instance v12, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v2, 0x7f0b00fe

    invoke-direct {v12, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v13, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v13, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v18

    .line 964
    .local v18, ks:Lcom/android/contacts/model/DataKind;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->throwIfList(Lcom/android/contacts/model/DataKind;)V

    .line 965
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f0b0156

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0b0159

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f0b0158

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f0b015a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f0b0157

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f0b015b

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b015e

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0b015d

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0b015c

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    const/4 v6, 0x1

    const-string v7, "#displayName"

    const/4 v8, 0x0

    const v9, 0x7f0b00fe

    const/4 v10, -0x1

    const v11, 0x7f04008d

    new-instance v12, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v2, 0x7f0b00fe

    invoke-direct {v12, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v13, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v13, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v15

    .line 997
    .local v15, kd:Lcom/android/contacts/model/DataKind;
    const/4 v2, 0x1

    iput v2, v15, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 998
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f0b0156

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    if-nez v14, :cond_0

    .line 1004
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0b0159

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f0b0158

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f0b015a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f0b0157

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f0b015b

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    :goto_0
    const/4 v6, 0x1

    const-string v7, "#phoneticName"

    const/4 v8, 0x0

    const v9, 0x7f0b015f

    const/4 v10, -0x1

    const v11, 0x7f040071

    new-instance v12, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v2, 0x7f0b00fe

    invoke-direct {v12, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v13, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v13, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/AccountType$StringInflater;Lcom/android/contacts/model/AccountType$StringInflater;)Lcom/android/contacts/model/DataKind;

    move-result-object v17

    .line 1033
    .local v17, kp:Lcom/android/contacts/model/DataKind;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 1034
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "#phoneticName"

    const v5, 0x7f0b015f

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b015e

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0b015d

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0b015c

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    return-object v16

    .line 1015
    .end local v17           #kp:Lcom/android/contacts/model/DataKind;
    :cond_0
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0b0159

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f0b0157

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f0b015a

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f0b0158

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    iget-object v2, v15, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f0b015b

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
