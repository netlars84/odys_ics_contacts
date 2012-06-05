.class public abstract Lcom/android/contacts/model/BaseAccountType;
.super Lcom/android/contacts/model/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/BaseAccountType$1;,
        Lcom/android/contacts/model/BaseAccountType$RelationshipKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$EventKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$GroupMembershipKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$SipAddressKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$WebsiteKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$OrganizationKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$ImKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$StructuredPostalKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$EmailKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$PhoneKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$NicknameKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$KindBuilder;,
        Lcom/android/contacts/model/BaseAccountType$KindParser;,
        Lcom/android/contacts/model/BaseAccountType$ImActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$EventActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;,
        Lcom/android/contacts/model/BaseAccountType$CommonInflater;,
        Lcom/android/contacts/model/BaseAccountType$SimpleInflater;,
        Lcom/android/contacts/model/BaseAccountType$Weight;,
        Lcom/android/contacts/model/BaseAccountType$Attr;,
        Lcom/android/contacts/model/BaseAccountType$Tag;
    }
.end annotation


# static fields
.field protected static final FLAGS_EMAIL:I = 0x21

.field protected static final FLAGS_EVENT:I = 0x1

.field protected static final FLAGS_GENERIC_NAME:I = 0x2001

.field protected static final FLAGS_NOTE:I = 0x24001

.field protected static final FLAGS_PERSON_NAME:I = 0x2061

.field protected static final FLAGS_PHONE:I = 0x3

.field protected static final FLAGS_PHONETIC:I = 0xc1

.field protected static final FLAGS_POSTAL:I = 0x22071

.field protected static final FLAGS_RELATION:I = 0x2061

.field protected static final FLAGS_SIP_ADDRESS:I = 0x21

.field protected static final FLAGS_WEBSITE:I = 0x11

.field private static final TAG:Ljava/lang/String; = "BaseAccountType"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/contacts/model/AccountType;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/android/contacts/model/BaseAccountType;->accountType:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/android/contacts/model/BaseAccountType;->dataSet:Ljava/lang/String;

    .line 114
    const v0, 0x7f0b010d

    iput v0, p0, Lcom/android/contacts/model/BaseAccountType;->titleRes:I

    .line 115
    const/high16 v0, 0x7f03

    iput v0, p0, Lcom/android/contacts/model/BaseAccountType;->iconRes:I

    .line 116
    return-void
.end method

.method static synthetic access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 123
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"
    .parameter "yearOptional"

    .prologue
    .line 135
    new-instance v0, Lcom/android/contacts/model/AccountType$EventEditType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected static buildImType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 131
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 119
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 127
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 139
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .parameter "attrs"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "attrs"
    .parameter "attribute"

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "attrs"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v10, 0x7f0b0158

    const v9, 0x7f0b0157

    const v2, 0x7f0b00fe

    const/16 v8, 0x2061

    const/4 v4, 0x1

    .line 173
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "#displayName"

    const/4 v3, -0x1

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 175
    .local v7, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v7, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 176
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 177
    iput v4, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 179
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 180
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0156

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 186
    .local v6, displayOrderPrimary:Z
    if-nez v6, :cond_0

    .line 187
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0159

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b015a

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b015b

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_0
    return-object v7

    .line 198
    :cond_0
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0159

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b015a

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, v7, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b015b

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0048

    const/4 v4, 0x1

    .line 289
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/16 v3, 0xf

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 291
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 292
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 293
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 295
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 303
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-object v6
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 426
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/group_membership"

    const v2, 0x7f0b0104

    const/16 v3, 0x3e7

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 429
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 430
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 431
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0049

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 330
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/im"

    const/16 v3, 0x14

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 332
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 333
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 338
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 339
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v0, "data5"

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 343
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data6"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 355
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-object v6
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b00ff

    const/4 v4, 0x1

    .line 234
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/nickname"

    const/16 v3, 0x73

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 236
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 237
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 238
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 239
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 240
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 243
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-object v6
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0b0040

    .line 386
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/note"

    const/16 v3, 0x6e

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 388
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 389
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 390
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 391
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 392
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x24001

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    return-object v6
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2001

    const/4 v4, 0x1

    .line 361
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0b0100

    const/4 v3, 0x5

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 364
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 365
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 366
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 368
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 369
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0042

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0043

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0047

    const/16 v3, 0xa

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 250
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 252
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    const v0, 0x7f020093

    iput v0, v6, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    .line 253
    const v0, 0x7f0b0138

    iput v0, v6, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    .line 254
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 255
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 256
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 257
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 259
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v5, "data3"

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 283
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    return-object v6
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
    const v2, 0x7f0b015f

    const/16 v7, 0xc1

    const/4 v4, 0x1

    .line 214
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "#phoneticName"

    const/4 v3, -0x1

    const v5, 0x7f040071

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 216
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const v1, 0x7f0b00fe

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 217
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 218
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 220
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 221
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "#phoneticName"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b015e

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0b015d

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b015c

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 378
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/photo"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 379
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 380
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 381
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-object v6
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0b0041

    .line 412
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/sip_address"

    const/16 v3, 0x82

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 415
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 416
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 417
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 418
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 419
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    return-object v6
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

    const/16 v7, 0x2061

    const/4 v4, 0x1

    .line 143
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const/4 v3, -0x1

    const v5, 0x7f04008a

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 145
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 146
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 147
    iput v4, v6, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 149
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 150
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0156

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0159

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0b0158

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b015a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0b0157

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b015b

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b015e

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0b015d

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b015c

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 309
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0b004a

    const/16 v3, 0x19

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 311
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 312
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 313
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 314
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 315
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 322
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b014e

    const v4, 0x22071

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-object v6
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0101

    .line 398
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/website"

    const/16 v3, 0x78

    const/4 v4, 0x1

    const v5, 0x7f04008d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 400
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 401
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 402
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 403
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 406
    iget-object v0, v6, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-object v6
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method protected final parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 704
    .local v3, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 705
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 706
    .local v0, depth:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    if-ne v0, v6, :cond_0

    .line 710
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, tag:Ljava/lang/String;
    const-string v6, "DataKind"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 713
    sget-object v6, Lcom/android/contacts/model/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/model/BaseAccountType$KindParser;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/contacts/model/BaseAccountType$KindParser;->parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/DataKind;

    .line 714
    .local v2, kind:Lcom/android/contacts/model/DataKind;
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    goto :goto_1

    .line 717
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #kind:Lcom/android/contacts/model/DataKind;
    :cond_2
    const-string v6, "BaseAccountType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    .end local v0           #depth:I
    .end local v4           #tag:Ljava/lang/String;
    :cond_3
    return-void
.end method
