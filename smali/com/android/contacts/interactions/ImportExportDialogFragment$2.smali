.class Lcom/android/contacts/interactions/ImportExportDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    .local v2, resId:I
    packed-switch v2, :pswitch_data_0

    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, dismissDialog:Z
    const-string v3, "ImportExportDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v5}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    :cond_0
    return-void

    .line 113
    .end local v0           #dismissDialog:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #calls: Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z
    invoke-static {v3, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z

    move-result v0

    .line 114
    .restart local v0       #dismissDialog:Z
    goto :goto_0

    .line 117
    .end local v0           #dismissDialog:Z
    :pswitch_1
    const/4 v0, 0x1

    .line 118
    .restart local v0       #dismissDialog:Z
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, exportIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v0           #dismissDialog:Z
    .end local v1           #exportIntent:Landroid/content/Intent;
    :pswitch_2
    const/4 v0, 0x1

    .line 124
    .restart local v0       #dismissDialog:Z
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #calls: Lcom/android/contacts/interactions/ImportExportDialogFragment;->doShareVisibleContacts()V
    invoke-static {v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0b00b3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
