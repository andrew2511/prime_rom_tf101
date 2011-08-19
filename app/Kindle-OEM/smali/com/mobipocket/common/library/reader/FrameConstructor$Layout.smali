.class Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;
.super Ljava/lang/Object;
.source "FrameConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/FrameConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Layout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/FrameConstructor;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getMaxHeight()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$400(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$200(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getMaxWidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$800(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidthWithStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)I

    move-result v0

    return v0
.end method

.method getMaxWidthWithStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)I
    .locals 3
    .parameter "style"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$300(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$100(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$300(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$100(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public setHyphenationManager(Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$902(Lcom/mobipocket/common/library/reader/FrameConstructor;Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    .line 199
    return-void
.end method

.method setLineSpacing(I)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$702(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 164
    return-void
.end method

.method setMaxHeight(I)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$200(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$402(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 189
    return-void
.end method

.method setParagraphDefaultIndentation(I)V
    .locals 1
    .parameter "newParagraphIndentation"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iput p1, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_INDENT:I

    .line 136
    return-void
.end method

.method setParagraphSpacing(I)V
    .locals 1
    .parameter "newParagraphSpacing"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iput p1, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_SPACING:I

    .line 131
    return-void
.end method

.method setSize(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame created with a bad size :width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad frame location x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$100(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$200(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$300(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$400(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v0

    if-eq p4, v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageSizeHasChanged()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$102(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 154
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$502(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 155
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$202(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 156
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$602(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 157
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$302(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 158
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0, p4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$402(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 159
    return-void
.end method
