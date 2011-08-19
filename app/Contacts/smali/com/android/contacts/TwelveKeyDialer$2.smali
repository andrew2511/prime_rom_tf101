.class Lcom/android/contacts/TwelveKeyDialer$2;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->queryLastOutgoingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v0, p1}, Lcom/android/contacts/TwelveKeyDialer;->access$202(Lcom/android/contacts/TwelveKeyDialer;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$300(Lcom/android/contacts/TwelveKeyDialer;)V

    .line 1245
    return-void
.end method
