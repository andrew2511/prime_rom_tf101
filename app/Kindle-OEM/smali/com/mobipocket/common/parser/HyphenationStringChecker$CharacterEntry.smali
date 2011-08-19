.class Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;
.super Ljava/lang/Object;
.source "HyphenationStringChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/HyphenationStringChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharacterEntry"
.end annotation


# instance fields
.field public beginPosition:I

.field public character:C

.field public endPosition:I

.field final synthetic this$0:Lcom/mobipocket/common/parser/HyphenationStringChecker;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/parser/HyphenationStringChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 7
    iput-object p1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->this$0:Lcom/mobipocket/common/parser/HyphenationStringChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/parser/HyphenationStringChecker;Lcom/mobipocket/common/parser/HyphenationStringChecker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;-><init>(Lcom/mobipocket/common/parser/HyphenationStringChecker;)V

    return-void
.end method
