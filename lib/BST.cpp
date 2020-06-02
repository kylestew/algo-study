#include "BST.h"

int BST::size(node* t) {
    if (t == NULL)
        return 0;
    else
        return size(t->left) + 1 + size(t->right);
}

/*
 * Recursivly search the ordered BST
 * Search takes at most O(h) where h is height of tree
 */
BST::node* BST::find(node* t, int x) {
    // node not found
    if (t == NULL) return NULL;

    // node found
    if (t->data == x) return t;

    // traverse
    if (x < t->data)
        return find(t->left, x);
    else
        return find(t->right, x);
}

/*
 * Insertion must place the new item in the location where search
 * will find it.
 */
BST::node* BST::insert(int x, node* t) {
    if (t == NULL) {
        // found position to place new node
        t = new node;
        t->data = x;
        t->left = t->right = NULL;
    } else if (x < t->data)
        t->left = insert(x, t->left);
    else if (x > t->data)
        t->right = insert(x, t->right);
    return t;
}
