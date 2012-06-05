.class public Lcom/android/contacts/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# static fields
.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field public static final TAG:Ljava/lang/String; = "ImportExportDialogFragment"


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->doShareVisibleContacts()V

    return-void
.end method

.method private doShareVisibleContacts()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 150
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b00fd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v10, uriListBuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 158
    .local v7, index:I
    :cond_2
    if-eqz v7, :cond_3

    .line 159
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v7, v7, 0x1

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 167
    .local v9, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #index:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #uriListBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 188
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 190
    .local v3, size:I
    if-le v3, v5, :cond_0

    .line 192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v2, args:Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b0105

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 207
    .end local v2           #args:Landroid/os/Bundle;
    :goto_0
    return v4

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_1
    invoke-static {v6, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    move v4, v5

    .line 207
    goto :goto_0

    .line 205
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "fragmentManager"

    .prologue
    .line 65
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;-><init>()V

    .line 66
    .local v0, fragment:Lcom/android/contacts/interactions/ImportExportDialogFragment;
    const-string v1, "ImportExportDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    .line 220
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    .line 226
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 73
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 77
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040081

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 90
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const v4, 0x7f0b00b3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 94
    :cond_0
    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const v4, 0x7f0b00b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 97
    :cond_1
    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const v4, 0x7f0b00b5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 100
    :cond_2
    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    const v4, 0x7f0b00b6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 104
    :cond_3
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 138
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b00f9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
