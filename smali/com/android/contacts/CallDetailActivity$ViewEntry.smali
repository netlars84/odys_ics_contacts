.class final Lcom/android/contacts/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 618
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 620
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 625
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 626
    return-void
.end method


# virtual methods
.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 629
    iput p1, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 630
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 631
    iput-object p3, p0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 632
    return-void
.end method
