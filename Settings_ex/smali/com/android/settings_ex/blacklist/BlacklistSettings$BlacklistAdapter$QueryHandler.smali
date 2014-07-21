.class Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;
.super Landroid/os/Handler;
.source "BlacklistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    .line 235
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    return-void
.end method

.method private lookupNameForNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$500(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$500(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, numberE164:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    move-object p1, v7

    .line 274
    .end local v7           #numberE164:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 275
    .local v8, result:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v9

    .line 276
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 277
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$600(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 282
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_2
    return-object v8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 240
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->lookupNameForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$200(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 244
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$300(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$400(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$400(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, finishMessage:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$400(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    .end local v0           #finishMessage:Landroid/os/Message;
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 252
    .end local v1           #name:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$300(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 253
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$400(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    #getter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$400(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter$QueryHandler;->this$0:Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->mQueryHandler:Landroid/os/Handler;
    invoke-static {v2, v4}, Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;->access$402(Lcom/android/settings_ex/blacklist/BlacklistSettings$BlacklistAdapter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 257
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
