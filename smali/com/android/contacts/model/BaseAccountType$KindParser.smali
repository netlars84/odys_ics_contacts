.class Lcom/android/contacts/model/BaseAccountType$KindParser;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindParser"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/contacts/model/BaseAccountType$KindParser;


# instance fields
.field private final mBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/BaseAccountType$KindBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 737
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$KindParser;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;-><init>()V

    sput-object v0, Lcom/android/contacts/model/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/model/BaseAccountType$KindParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    .line 742
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$NameKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 743
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$NicknameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$NicknameKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 744
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhoneKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$PhoneKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 745
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EmailKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$EmailKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 746
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$StructuredPostalKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$StructuredPostalKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 747
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$ImKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$ImKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 748
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$OrganizationKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$OrganizationKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 749
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$PhotoKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 750
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$NoteKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 751
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$WebsiteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$WebsiteKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 752
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SipAddressKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SipAddressKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 753
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$GroupMembershipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$GroupMembershipKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 754
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EventKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$EventKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 755
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$RelationshipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$RelationshipKindBuilder;-><init>(Lcom/android/contacts/model/BaseAccountType$1;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V

    .line 756
    return-void
.end method

.method private addBuilder(Lcom/android/contacts/model/BaseAccountType$KindBuilder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/contacts/model/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    return-void
.end method


# virtual methods
.method public parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 5
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
    .line 772
    const-string v2, "kind"

    #calls: Lcom/android/contacts/model/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, v2}, Lcom/android/contacts/model/BaseAccountType;->access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, kind:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/BaseAccountType$KindBuilder;

    .line 774
    .local v0, builder:Lcom/android/contacts/model/BaseAccountType$KindBuilder;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/model/BaseAccountType$KindBuilder;->parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 777
    :cond_0
    new-instance v2, Lcom/android/contacts/model/AccountType$DefinitionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined data kind \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/contacts/model/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
