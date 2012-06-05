.class Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public chatCapability:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public footerLine:Ljava/lang/CharSequence;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public isPrimary:Z

.field public kind:Ljava/lang/String;

.field private mIsInSubSection:Z

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public presence:I

.field public resPackageName:Ljava/lang/String;

.field public secondaryActionDescription:I

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public type:I

.field public typeString:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1237
    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1211
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1216
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1219
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 1220
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->resPackageName:Ljava/lang/String;

    .line 1221
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1222
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 1223
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 1225
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    .line 1227
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    .line 1229
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1230
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 1232
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 1234
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 1238
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isEnabled:Z

    .line 1239
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 6
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "values"
    .parameter "isDirectoryEntry"
    .parameter "directoryId"

    .prologue
    .line 1246
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1247
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-wide p3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->id:J

    .line 1248
    iput-object p0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 1249
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1250
    if-eqz p6, :cond_0

    .line 1251
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1254
    :cond_0
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1255
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v3, :cond_4

    :cond_1
    const-string v3, ""

    :goto_0
    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1257
    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p2, p5, p0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1258
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->resPackageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->resPackageName:Ljava/lang/String;

    .line 1260
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1261
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1264
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1265
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 1266
    .local v2, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_2

    .line 1267
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1269
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1281
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    :goto_1
    return-object v0

    .line 1255
    :cond_4
    iget v3, p2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1272
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    .line 1278
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_6
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1
    .parameter "status"
    .parameter "fillData"

    .prologue
    .line 1292
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1293
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1295
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 1298
    :cond_0
    return-object p0
.end method

.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1
    .parameter "clickedView"
    .parameter "fragmentListener"

    .prologue
    .line 1366
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    .line 1312
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    const/4 v1, 0x0

    .line 1341
    :goto_0
    return v1

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    .line 1319
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1320
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1321
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1325
    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1328
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v2}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1330
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1334
    :cond_2
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1339
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    goto :goto_0

    .line 1334
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    goto :goto_1
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1209
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public isInSubSection()Z
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0
    .parameter "isInSubSection"

    .prologue
    .line 1302
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 1303
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 5
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 1346
    if-nez p1, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return v0

    .line 1350
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1209
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method
