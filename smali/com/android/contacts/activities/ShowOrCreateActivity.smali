.class public final Lcom/android/contacts/activities/ShowOrCreateActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACT_ID_INDEX:I = 0x0

.field static final CREATE_CONTACT_DIALOG:I = 0x1

.field static final LOGD:Z = false

.field static final LOOKUP_KEY_INDEX:I = 0x1

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final QUERY_TOKEN:I = 0x2a

.field static final TAG:Ljava/lang/String; = "ShowOrCreateActivity"


# instance fields
.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z

.field private mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/activities/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_3

    .line 90
    new-instance v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 96
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 99
    .local v8, data:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 100
    .local v11, scheme:Ljava/lang/String;
    const/4 v12, 0x0

    .line 101
    .local v12, ssp:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 102
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 103
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 107
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 108
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 109
    .local v10, originalExtras:Landroid/os/Bundle;
    if-eqz v10, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 114
    :cond_1
    const-string v0, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 116
    iput-object v12, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 120
    :cond_2
    const-string v0, "com.android.contacts.action.FORCE_CREATE"

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    .line 123
    const-string v0, "mailto"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "email"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "query"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/activities/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v3           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 92
    .end local v8           #data:Landroid/net/Uri;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #originalExtras:Landroid/os/Bundle;
    .end local v11           #scheme:Ljava/lang/String;
    .end local v12           #ssp:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    goto :goto_0

    .line 130
    .restart local v8       #data:Landroid/net/Uri;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #originalExtras:Landroid/os/Bundle;
    .restart local v11       #scheme:Ljava/lang/String;
    .restart local v12       #ssp:Ljava/lang/String;
    :cond_4
    const-string v0, "tel"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "query"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 135
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    const-string v0, "ShowOrCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 232
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 211
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, createIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    const-string v2, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b009a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, message:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0b0099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/activities/ShowOrCreateActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ShowOrCreateActivity$1;-><init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    .line 153
    if-nez p3, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    .line 204
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v3, 0x0

    .line 161
    .local v3, count:I
    const-wide/16 v0, -0x1

    .line 162
    .local v0, contactId:J
    const/4 v6, 0x0

    .line 164
    .local v6, lookupKey:Ljava/lang/String;
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 165
    if-ne v3, v10, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 168
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 171
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 174
    if-ne v3, v10, :cond_2

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_2

    .line 176
    invoke-static {v0, v1, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 177
    .local v2, contactUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v7, viewIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 171
    .end local v2           #contactUri:Landroid/net/Uri;
    .end local v7           #viewIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v8

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v8

    .line 181
    :cond_2
    if-le v3, v10, :cond_3

    .line 183
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEARCH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v5, listIntent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    iget-object v8, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 191
    .end local v5           #listIntent:Landroid/content/Intent;
    :cond_3
    iget-boolean v8, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    if-eqz v8, :cond_4

    .line 193
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT"

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v4, createIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    const-string v8, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 201
    .end local v4           #createIntent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ShowOrCreateActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 149
    :cond_0
    return-void
.end method
